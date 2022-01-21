DIR="$( cd "$( dirname "$0" )" && pwd )"
PROJECT_DIR=$DIR/..
BUILD_DIR=$PROJECT_DIR/build

cd "$PROJECT_DIR" || exit
git submodule init && git submodule update
rm -rf $BUILD_DIR
cmake -H. -B$BUILD_DIR
ls $BUILD_DIR

cd $BUILD_DIR && make -j5
