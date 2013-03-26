#!/bin/bash

## include the file to be tested
. ../lib/common.sh.lib

user_given=$(is_user_found "abre")

if [ $user_given -eq 1 ]; then
    echo -n "[PASS]"
else
    echo -n "[FAIL]"
fi

echo " - is_user_found"
