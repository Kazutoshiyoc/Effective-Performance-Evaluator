# 型を指定して実行
LOLS_formatted="              ${LOLS}"
LOLS_formatted=${LOLS_formatted: -14}
Type_formatted="           ${Type}"
Type_formatted=${Type_formatted: -11}
echo -n "#${Type_formatted}   |"
echo -n "${LOLS_formatted}   ->   "
export sec_exec=$((time -p bin/${Type}_${LOLS_} ${MAX_LOOP_A} ${MAX_LOOP_B} ${MAX_LOOP_C}) 2>&1 | grep real | awk '{print $2}')
bash script/calc_ops_per_sec.sh
