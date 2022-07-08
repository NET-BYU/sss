#!/bin/bash

git clone git@github.com:christopolise/chocolate-doom-sss.git && cd chocolate-doom-sss

GITSTEP=$(echo $?)
if [ $GITSTEP -eq 0 ]; then 
    echo "Git setup step passed";
else
    echo "Something went wrong in the setup. Please look at the output for more details. You can also try installing manually";
    exit
fi

./autogen.sh && ./configure && make

BUILDSTEP=$(echo $?)

if [ $BUILDSTEP -eq 0 ]; then 
    echo "Build step passed";
else
    echo "Something went wrong in the setup. Please look at the output for more details. You can also try installing manually";
    exit
fi

mv src/chocolate-doom .. && cd .. && rm -rf chocolate-doom-sss

CLEANUPSTEP=$(echo $?)

if [ $CLEANUPSTEP -eq 0 ]; then 
    echo "Clean step passed";
else
    echo "Something went wrong in the setup. Please look at the output for more details. You can also try installing manually";
    exit
fi


echo "Setup completed successfully"