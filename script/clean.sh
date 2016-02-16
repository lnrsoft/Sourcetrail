#!/bin/bash

SUCCESS="\033[32mSuccess:\033[00m"

# Enter masterproject directory
MY_PATH=`dirname "$0"`
cd $MY_PATH/..

# Remove symbolic links
cmd //c 'rmdir '.$MY_PATH.'\..\bin\app\Debug\data' &
cmd //c 'rmdir '.$MY_PATH.'\..\bin\app\Debug\user' &
cmd //c 'rmdir '.$MY_PATH.'\..\bin\app\Release\data' &
cmd //c 'rmdir '.$MY_PATH.'\..\bin\app\Release\user' &

# Remove folders and contents
rm -rf build
rm -rf bin/app/Debug
rm -rf bin/app/Release
rm -rf bin/lib/Debug
rm -rf bin/lib/Release
rm -rf bin/test/Debug
rm -rf bin/test/Release

# Remove log files
find bin/test/data/log -type f -name 'log*' -delete

echo -e $SUCCESS "clean complete"
