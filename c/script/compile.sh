# バイナリ＆アセンブリを出力
gcc -Wall -O0 src/${Type}_${LOLS_}.c -o bin/${Type}_${LOLS_}
gcc -S -Wall -O0 src/${Type}_${LOLS_}.c -o assembly/${Type}_${LOLS_}.s
