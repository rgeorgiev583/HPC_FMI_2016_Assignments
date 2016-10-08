#!/bin/sh

find data -name '*.asc' -exec ./decrypt.sh {} \;
