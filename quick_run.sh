#!/bin/bash
clear
cd "$(dirname "$0")"

export hostname=$(hostname)
export cpu_model=$(cat /proc/cpuinfo | grep -m 1 "model name" | awk 'match($0, /^model name\s+:\s+/) {print substr($0, RLENGTH+1)}')
export cpu_cores=$(cat /proc/cpuinfo | grep -m 1 "cpu cores" | awk 'match($0, /^cpu cores\s+:\s+/) {print substr($0, RLENGTH+1)}')
export cpu_threads=$(cat /proc/cpuinfo | grep -m 1 "siblings" | awk 'match($0, /^siblings\s+:\s+/) {print substr($0, RLENGTH+1)}')
export cpu_MHz=$(cat /proc/cpuinfo | grep -m 1 "cpu MHz" | awk 'match($0, /^cpu MHz\s+:\s+/) {print substr($0, RLENGTH+1)}')
export cpu_cache=$(cat /proc/cpuinfo | grep -m 1 "cache size" | awk 'match($0, /^cache size\s+:\s+/) {print substr($0, RLENGTH+1)}')
export cpu_arch=$(uname -m)

export kernel_system=$(uname -s)
export kernel_release=$(uname -r)
export os=$(cat /etc/os-release | grep PRETTY_NAME | awk 'match($0, /^PRETTY_NAME="/) {print substr($0, RLENGTH+1)}' | sed 's/\"//g')
export gcc_version=$(gcc --version | grep gcc)

echo "# =========================================================================================="
echo "#"
echo "#"
echo "#                              Effective Performance Evaluator"
echo "#"
echo "#                                         Ver. 0.0.1"
echo "#"
echo "#"
echo "# =========================================================================================="
echo "#"
echo "# + Hardware Information"
echo "#"
echo "#  >> Host Machine : ${hostname}"
echo "#  >> CPU Model    : ${cpu_model}"
echo "#  >> CPU Cores    : ${cpu_cores} cores"
echo "#  >> CPU Threads  : ${cpu_threads} threads"
echo "#  >> CPU Clock    : ${cpu_MHz} MHz"
echo "#  >> CPU Cache    : ${cpu_cache}"
echo "#  >> Architecture : ${cpu_arch}"
echo "#"
echo "# ------------------------------------------------------------------------------------------"
echo "#"
echo "# + System Information"
echo "#"
echo "#  >> Kernel Version   : ${kernel_system} ${kernel_release}"
echo "#  >> Operating System : ${os}"
echo "#  >> GCC Version      : ${gcc_version}"
echo "#"
echo "# ------------------------------------------------------------------------------------------"
echo "#"
echo "# + CPU Benchmark"
echo "#"
echo "#  >> Parformance evaluation by C Language"
echo "#"
source c/conf.sh
bash c/exec.sh
echo "#"
echo "#  ALL Calculations have been finished."
echo "#"
echo "# =========================================================================================="
