#!/bin/bash
set -e

readonly ARGS="$@"
readonly THEME="zellner"
readonly FONT="Inconsolata"
readonly FONT_SIZE=36

function is_file() {
    local file=$1

    [[ -f $file ]]
}

function highlight_code() {
    local filename=$1

    highlight \
        --syntax elixir \
        -O rtf \
        --font-size $FONT_SIZE \
        --font $FONT \
        --style $THEME \
        --line-numbers \
        $filename
}

function batch_highlight_dir() {
    echo "batch highlighting directory $(pwd)"
}

function main() {
    local filename=$1

    if is_file $filename;
    then
        highlight_code $filename
    else
        batch_highlight_dir
    fi
}

main $ARGS
