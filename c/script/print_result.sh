error_divide_by_zero='Divide by zero'

# 実行時間が短すぎる場合の処理
if [[ ${ops_per_sec_calced} =~ ${error_divide_by_zero} ]];
then
	echo -e "\e[31mShortage of the Loop size for the Effective Results.\e[m"

# 実行時間が十分長いときの処理
else
	# フォーマット整形（余分に0/空白を付与）
	sec__exec_time="0000000000${sec__exec_time}"
	ops_per_sec_calced_formatted="          ${ops_per_sec_calced}"
	ops_per_sec_theoritical_formatted="          ${ops_per_sec_theoritical}"

	# フォーマット整形（後ろから規定桁数取り出す）
	sec__exec_time=${sec__exec_time: -8}
	ops_per_sec_calced_formatted=${ops_per_sec_calced_formatted: -10}
	ops_per_sec_theoritical_formatted=${ops_per_sec_theoritical_formatted: -10}

	# フォーマット整形（出力情報の付加）
	time_calced="${sec__exec_time} sec"
	_time_empty="#              |                     (Theoritical)"
	performance_calced="${ops_per_sec_calced_formatted} MOps/sec  [  1 Thread  ]"
	performance_theoritical="${ops_per_sec_theoritical_formatted} MOps/sec  [ ${cpu_threads} Threads ]"

	# 実行時間が長すぎる場合の処理（規定桁数: 8）
	limit_sec__calc_time=99999.99
	timeover_state=$(echo "${sec__exec_time} > ${limit_sec__calc_time}" | bc)
	if [ ${timeover_state} -eq 1 ];
	then
		# 結果の出力
		echo "${sec__exec_time} sec   |   ${performance_calced}"
		echo "${_time_empty}   |   ${performance_theoritical}"
		echo -e "#                          \e[31m *Too Large Loop size for the Efficient Calculation.\e[m"

	# 実行時間が適切な場合の処理
	else
		# 結果の出力
		echo "${time_calced}   |${performance_calced}"
		echo "${_time_empty}   |${performance_theoritical}"
	fi

	# Ops/secが大きすぎる場合の処理（規定桁数: 10）
	limit_size_ops_per_sec=99999999.9
	size_over_status__calced=$(echo "${ops_per_sec_calced} > ${limit_size_ops_per_sec}" | bc)
	size_over_status__theoritical=$(echo "${ops_per_sec_theoritical} > ${limit_size_ops_per_sec}" | bc)
	if [ ${size_over_status__calced} -eq 1 ] || [ ${size_over_status__theoritical} -eq 1 ];
	then
		# エラー表示
		echo -e "#          \e[31mError: Incorrect result has been shown (Calculated Ops/sec is lager than 10 digits).\e[m"
	fi
fi
echo "#   ----------------------------------------------------------------------------------------"
