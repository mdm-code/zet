#!/bin/sh

base="$(dirname "$0")"
dir="${base##./}"

ln -f "$dir/zet" "$dir/zetf"
ln -f "$dir/zet" "$dir/zetp"
ln -f "$dir/zet" "$dir/zetg"

target="$(echo "$PATH" | cut -d : -f1)/"
cp "$dir/zet" "$target"
cp "$dir/zetf" "$target"
cp "$dir/zetp" "$target"
cp "$dir/zetg" "$target"
