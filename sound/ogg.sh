#!/bin/sh

set -x

cd "$(dirname "$0")"

for file in sfx/*.wav
do
	ffmpeg -y -i "$file" "$(basename "$file" | rev | cut -d. -f2- | rev)".ogg
done
