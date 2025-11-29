#!/bin/bash
# SPDX-FileCopyrightText: 2025 Matumoto Hayoto
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目: NG
    res=1
}

res=0


out=$(echo -e "40\n4\n5" | ./syodou)
[ "${out}" = "0.4270707954918481" ] || ng ${LINENO}

out=$(echo -e "60\n6\n5" | ./syodou)
[ "${out}" = "0.4209460676823561" ] || ng ${LINENO}

echo -e "40\n4" | ./syodou >/dev/null 2>&1
[ $? -eq 1 ] || ng ${LINENO}

echo -e "aaa\n4\n5" | ./syodou >/dev/null 2>&1
[ $? -eq 1 ] || ng ${LINENO}

echo -e "あいうえお\n4\n5" | ./syodou >/dev/null 2>&1
[ $? -eq 1 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res


