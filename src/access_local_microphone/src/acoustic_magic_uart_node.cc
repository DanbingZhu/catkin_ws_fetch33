#include "acoustic_magic_msgs/SoundSourceAngle.h"
#include "cogrob/hardware/acoustic_magic/uart_reader.h"
#include "ros/ros.h"
#include "third_party/gflags.h"
#include "third_party/glog.h"
#include "util/statusor.h"

using cogrob::hardware::acoustic_magic::UartQueue;
using cogrob::hardware::acoustic_magic::UartReader;

DEFINE_string(acoustic_magic_uart_device, "/dev/ttyUSB0",
    "Path to Acoustic Magic USB device.");

int main(int argc, char *argv[])
{
  google::InitGoogleLogging(argv[0]);
  google::LogToStderr();
  gflags::ParseCommandLineFlags(&argc, &argv, true);
  ros::init(argc, argv, "acoustic_magic_uart");

  UartQueue uart_queue;
  UartReader reader(FLAGS_acoustic_magic_uart_device, &uart_queue);

  ros::NodeHandle node;
  ros::Publisher pub = node.advertise<acoustic_magic_msgs::SoundSourceAngle>(
      "cogrob/microphone_direction", 10);

  uint32_t seq = 0;

  while (true) {
    // Blocking pop, 1000 msec.
    util::StatusOr<uint8_t> val = uart_queue.blocking_pop(1000);
    // If it fails, kill the program.
    uint8_t raw_val = val.ValueOrDie();
    //LOG(INFO) << static_cast<int>(raw_val);
    acoustic_magic_msgs::SoundSourceAngle msg;
    msg.header.stamp = ros::Time::now();
    msg.header.seq = seq++;

    if (raw_val == 255) {
      msg.is_valid = false;
      msg.angle = 0;
    } else {
      LOG_IF(ERROR, raw_val > 250) << "Value greater than 250 but not 255, "
                                   << "raw_val is " << raw_val;
      msg.is_valid = true;
      msg.angle = (125.0 - raw_val) / 250.0 * 180.0;
    }
    pub.publish(msg);
  }

  return 0;
}
