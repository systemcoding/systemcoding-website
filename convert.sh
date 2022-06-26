#!/bin/sh
# https://github.com/hkim0331/md2html.git
# VERSION: 0.2

usage() {
  echo usage: $0 [--dest dir] file1.md file2.md ...
  exit 1
}


md2html() {
  TITLE=`basename $1 .md`
  HTML=${DEST}/${TITLE}.html

  pandoc --standalone -o ${HTML} -f markdown -t html -c dummy.css $1
}

while [ "$#" -ne "0"  ]; do
  if [ "$1" = "--help" ]; then
      usage;
  elif [ "$1" = "--dest" ]; then
      shift
      DEST=$1
  else
      md2html $1;
  fi
  shift
done