#!/usr/bin/bash

if [ "$1" == "normal" ]; then
    ab -c 50 -n 1000 https://www.picoluna.com/
else
    ab -c 50 -n 1000 https://www.picoluna.com/sub/home/dist/a/b/c/d/e/f/g/h/i/j/k/
fi
