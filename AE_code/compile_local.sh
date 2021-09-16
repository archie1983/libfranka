#/bin/sh

export LIBFRANKA_DIR="/home/student5/robotics/Teleoperation/libfranka"

echo "Compiling $1"

/usr/bin/c++ -I$LIBFRANKA_DIR/include -isystem /usr/include/eigen3 -O3 -DNDEBUG   -Wall -Wextra -std=gnu++14 -o $1.cpp.o -c $1.cpp

/usr/bin/c++  -O3 -DNDEBUG   $1.cpp.o  -o $1  -Wl,-rpath,$LIBFRANKA_DIR/build: $LIBFRANKA_DIR/build/examples/libexamples_common.a $LIBFRANKA_DIR/build/libfranka.so.0.8.0

rm $1.cpp.o
