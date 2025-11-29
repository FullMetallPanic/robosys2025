#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Matumoto Hayoto
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目: NG
    res=1
}

res=0
tolerance=0.0001

float_equal() {
    a=$1
    b=$2
    diff=$(echo "$a - $b" | bc -l)
    absdiff=$(echo "if ($diff<0) -1*$diff else $diff" | bc -l)
    [ $(echo "$absdiff < $tolerance" | bc -l) -eq 1 ]
}

out=$(echo -e "40\n4\n5" | ./syodou)
expected="0.4270707954918481"
float_equal "$out" "$expected" || ng ${LINENO}

out=$(echo -e "60\n6\n5" | ./syodou)
expected="0.4209460676823561"
float_equal "$out" "$expected" || ng ${LINENO}

echo -e "40\n4" | ./syodou >/dev/null 2>&1
[ $? -eq 1 ] || ng ${LINENO}

echo -e "aaa\n4\n5" | ./syodou >/dev/null 2>&1
[ $? -eq 1 ] || ng ${LINENO}

echo -e "あいうえお\n4\n5" | ./syodou >/dev/null 2>&1
[ $? -eq 1 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res



