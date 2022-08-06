# フォーマット調整（空白を追加）
source script/add_space.sh ${LOLS} 14
LOLS_formatted=${return_val}

# フォーマット調整（空白を追加）
source script/add_space.sh ${Type} 11
Type_formatted=${return_val}

# フォーマット調整＆出力
echo -n "#${Type_formatted}   |"
echo -n "${LOLS_formatted}   ->   "

# 計算の実行＆経過時間を記録
export sec_exec=$((time -p bin/${Type}_${LOLS_} ${MAX_LOOP_A} ${MAX_LOOP_B} ${MAX_LOOP_C}) 2>&1 | grep real | awk '{print $2}')

# Ops/secの計算
bash script/calc_ops_per_sec.sh
