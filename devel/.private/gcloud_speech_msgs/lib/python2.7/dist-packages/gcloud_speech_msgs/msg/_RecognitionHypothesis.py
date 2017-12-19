# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gcloud_speech_msgs/RecognitionHypothesis.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RecognitionHypothesis(genpy.Message):
  _md5sum = "67d30fae26a67ab503aad1ca2f76d58e"
  _type = "gcloud_speech_msgs/RecognitionHypothesis"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Recognition hypothesis for a portion of speech. Equivalent to
# google.cloud.speech.v1.SpeechRecognitionAlternative, See also:
# https://cloud.google.com/speech/reference/rpc/google.cloud.speech.v1#speechrecognitionalternative

# Transcript text representing the words that the user spoke.
string transcript

# The confidence estimate between 0.0 and 1.0. A higher number indicates an
# estimated greater likelihood that the recognized words are correct. This field
# is typically provided only for the top hypothesis, and only for
# is_portion_final=true results. Clients should not rely on the confidence field
# as it is not guaranteed to be accurate or consistent. The default of 0.0 is a
# sentinel value indicating confidence was not set.
float64 confidence
"""
  __slots__ = ['transcript','confidence']
  _slot_types = ['string','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       transcript,confidence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RecognitionHypothesis, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.transcript is None:
        self.transcript = ''
      if self.confidence is None:
        self.confidence = 0.
    else:
      self.transcript = ''
      self.confidence = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.transcript
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_d.pack(self.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.transcript = str[start:end].decode('utf-8')
      else:
        self.transcript = str[start:end]
      start = end
      end += 8
      (self.confidence,) = _struct_d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.transcript
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_d.pack(self.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.transcript = str[start:end].decode('utf-8')
      else:
        self.transcript = str[start:end]
      start = end
      end += 8
      (self.confidence,) = _struct_d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_d = struct.Struct("<d")
