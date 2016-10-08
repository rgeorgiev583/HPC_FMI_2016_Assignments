#!/bin/sh

output=`echo "$1" | sed -e 's/.asc$//'`
echo "$1 => $output"
gpg2 --output "$output" --decrypt "$1"
