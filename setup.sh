#!/bin/sh

base="$(dirname "$0")"
dir="${base##./}"

ln -f "$dir/zet" "$dir/zetf"
ln -f "$dir/zet" "$dir/zetp"
ln -f "$dir/zet" "$dir/zetg"
