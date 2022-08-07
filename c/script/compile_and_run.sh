# 定義からOps数を計算
ops_define=`echo ${ops_define} | sed 's/ //g'`
export ops_num=$(echo | awk '{printf "%d", '${ops_define}'}')

# コンパイル
bash script/compile.sh

# 計算の実行
bash script/run_by_LOLS.sh
