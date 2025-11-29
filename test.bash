#!/bin/bash -xv
#SPDX-FileCopyrightText: 2025 Matumoto Hayoto
# SPDX-License-Identifier: BSD-3-Clause

err=0

output=$(echo -e "40\n4\n5" | ./syodou)
expected="0.40689655172413796"
if [ "$output" != "$expected" ]; then
    echo "test1 NG"
    err=1
else
    echo "test1 OK"
fi

output=$(echo -e "60\n6\n5" | ./syodou)
expected="0.45111731843575417"
if [ "$output" != "$expected" ]; then
    echo "test2 NG"
    err=1
else
    echo "test2 OK"
fi

echo -e "40\n4" | ./syodou >/dev/null 2>&1
if [ $? -ne 1 ]; then
    echo "test3 NG"
    err=1
else
    echo "test3 OK"
fi

echo -e "aaa\n4\n5" | ./syodou >/dev/null 2>&1
if [ $? -ne 1 ]; then
    echo "test4 NG"
    err=1
else
    echo "test4 OK"
fi

if [ $err -eq 0 ]; then
    echo "ALL TESTS OK"
    exit 0
else
    echo "SOME TESTS FAILED"
    exit 1
fi

