#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/users/danbing/catkin_workspace/src/central_control"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/users/danbing/catkin_workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/users/danbing/catkin_workspace/install/lib/python2.7/dist-packages:/home/users/danbing/catkin_workspace/build/central_control/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/users/danbing/catkin_workspace/build/central_control" \
    "/usr/bin/python" \
    "/home/users/danbing/catkin_workspace/src/central_control/setup.py" \
    build --build-base "/home/users/danbing/catkin_workspace/build/central_control" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/users/danbing/catkin_workspace/install" --install-scripts="/home/users/danbing/catkin_workspace/install/bin"
