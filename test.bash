#!/bin/bash -xv
#SPDX-FileCopyrightText: 2025 Matumoto Hayoto
# SPDX-License-Identifier: BSD-3-Clause

#!/bin/bash

output=$(echo -e "40\n4\n5" | ./syodou)
expected="0.40689655172413796"
if [ "$output" != "$expected" ]; then
    echo "test1: expected $expected but got $output"
    exit 1
fi

output=$(echo -e "60\n6\n5" | ./syodou)
expected="0.45111731843575417"
if [ "$output" != "$expected" ]; then
    echo "test2: expected $expected but got $output"
    exit 1
fi

output=$(echo -e "40\n4" | ./syodou; echo $?)
if [ "$output" = "1" ]; then
    true
else
    echo "test3: expected exit 1 for insufficient input"
    exit 1
fi

output=$(echo -e "aaa\n4\n5" | ./syodou; echo $?)
if [ "$output" = "1" ]; then
    true
else
    echo "test4: expected exit 1 for invalid input"
    exit 1
fi

echo "OK"
exit 0

