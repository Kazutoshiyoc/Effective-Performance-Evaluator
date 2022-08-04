# 定義からOps数を計算
export ops_num=$(echo "${ops_define}" | bc)

# コンパイル
bash script/compile.sh

# 計算の実行
bash script/run_by_LOLS.sh
