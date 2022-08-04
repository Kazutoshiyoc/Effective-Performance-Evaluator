#!/bin/bash
cd $(dirname $0)

echo "#   Execution & Results"
echo "#   ----------------------------------------------------------------------------------------"
echo "#       Type   |   Loop/Ope/LS   ->       Time       |             Performance"
echo "#   ----------------------------------------------------------------------------------------"



# =================================================================================================
#
# int型のベンチマークテスト
#
# =================================================================================================
export Type="int"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 3重ループ
ops_loop_assign="${MAX_LOOP_B}*${MAX_LOOP_A} + ${MAX_LOOP_A} + 1"
ops_loop_cmpare="${MAX_LOOP_C}*${MAX_LOOP_B}*${MAX_LOOP_A} + ${MAX_LOOP_B}*${MAX_LOOP_A} + ${MAX_LOOP_A}"
ops_loop_conditional_equation="${MAX_LOOP_C}*${MAX_LOOP_B}*${MAX_LOOP_A} + ${MAX_LOOP_B}*${MAX_LOOP_A} + ${MAX_LOOP_A}"
ops_loop="${ops_loop_assign} + ${ops_loop_cmpare} + ${ops_loop_conditional_equation}"

# ------------------------------------------------------------
# Loop/Operator/LoadStoreRate = 3/0/0
export LOLS="3/0/0"
export LOLS_=${LOLS//\//_}

# Opsの定義＆コンパイル＆実行
ops_operator="0"
ops_loadstore="0"
export ops_define="${ops_loop} + ${ops_operator} + ${ops_loadstore}"
bash script/compile_and_run.sh

# ------------------------------------------------------------
# Loop/Operator/LoadStoreRate = 3/1/0
export LOLS="3/1/0"
export LOLS_=${LOLS//\//_}

# Opsの定義＆コンパイル＆実行
ops_operator="1*${MAX_LOOP_C}*${MAX_LOOP_B}*${MAX_LOOP_A}"
ops_loadstore="0"
export ops_define="${ops_loop} + ${ops_operator} + ${ops_loadstore}"
bash script/compile_and_run.sh

# ------------------------------------------------------------
# Loop/Operator/LoadStoreRate = 3/5/0
export LOLS="3/5/0"
export LOLS_=${LOLS//\//_}

# Opsの定義＆コンパイル＆実行
ops_operator="5*${MAX_LOOP_C}*${MAX_LOOP_B}*${MAX_LOOP_A}"
ops_loadstore="0"
export ops_define="${ops_loop} + ${ops_operator} + ${ops_loadstore}"
bash script/compile_and_run.sh

# ------------------------------------------------------------
# Loop/Operator/LoadStoreRate = 3/50/0
export LOLS="3/50/0"
export LOLS_=${LOLS//\//_}

# Opsの定義＆コンパイル＆実行
ops_operator="50*${MAX_LOOP_C}*${MAX_LOOP_B}*${MAX_LOOP_A}"
ops_loadstore="0"
export ops_define="${ops_loop} + ${ops_operator} + ${ops_loadstore}"
bash script/compile_and_run.sh

# ------------------------------------------------------------
# Loop/Operator/LoadStoreRate = 3/4/4
export LOLS="3/4/4"
export LOLS_=${LOLS//\//_}

# Opsの定義＆コンパイル＆実行
ops_operator="4*${MAX_LOOP_C}*${MAX_LOOP_B}*${MAX_LOOP_A}"
ops_loadstore="4*${MAX_LOOP_C}*${MAX_LOOP_B}*${MAX_LOOP_A}"
export ops_define="${ops_loop} + ${ops_operator} + ${ops_loadstore}"
bash script/compile_and_run.sh
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



# =================================================================================================
#
# double型のベンチマークテスト
#
# =================================================================================================
export Type="double"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 3重ループ
ops_loop_assign="${MAX_LOOP_B}*${MAX_LOOP_A} + ${MAX_LOOP_A} + 1"
ops_loop_cmpare="${MAX_LOOP_C}*${MAX_LOOP_B}*${MAX_LOOP_A} + ${MAX_LOOP_B}*${MAX_LOOP_A} + ${MAX_LOOP_A}"
ops_loop_conditional_equation="${MAX_LOOP_C}*${MAX_LOOP_B}*${MAX_LOOP_A} + ${MAX_LOOP_B}*${MAX_LOOP_A} + ${MAX_LOOP_A}"
ops_loop="${ops_loop_assign} + ${ops_loop_cmpare} + ${ops_loop_conditional_equation}"

# ------------------------------------------------------------
# Loop/Operator/LoadStoreRate = 3/0/0
export LOLS="3/0/0"
export LOLS_=${LOLS//\//_}

# Opsの定義＆コンパイル＆実行
ops_operator="0"
ops_loadstore="0"
export ops_define="${ops_loop} + ${ops_operator} + ${ops_loadstore}"
bash script/compile_and_run.sh

# ------------------------------------------------------------
# Loop/Operator/LoadStoreRate = 3/1/0
export LOLS="3/1/0"
export LOLS_=${LOLS//\//_}

# Opsの定義＆コンパイル＆実行
ops_operator="1*${MAX_LOOP_C}*${MAX_LOOP_B}*${MAX_LOOP_A}"
ops_loadstore="0"
export ops_define="${ops_loop} + ${ops_operator} + ${ops_loadstore}"
bash script/compile_and_run.sh
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

