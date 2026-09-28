#!/bin/sh
# 本体の pdf を作る。old.tex があれば差分の pdf も作る。old.tex は添削に出した版。
# usage: sh paper/build.sh [old.tex] [new.tex]
set -e

old=${1:-paper/old.tex}
new=${2:-paper/main.tex}

set -- "$new"
if [ -f "$old" ]; then
	# --no-del は削除された語句だけを取り除くので、その前後の空白が残る。句読点の
	# 直前に空いた分を詰める。
	latexdiff --no-del --graphics-markup=none \
		--preamble=paper/diff-preamble.tex \
		"$old" "$new" \
		| sed -E 's/([^[:space:]]) +([.,;:])/\1\2/g' >paper/diff.tex
	set -- "$@" paper/diff.tex
fi

latexmk -cd -pdf "$@"
latexmk -cd -c "$@"
rm -f paper/diff.tex
