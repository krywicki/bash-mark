#!/bin/sh
#
# Description Bookmark current directory

BASHMARK_DIR="${BASHMARK_DIR:-$HOME/.local/share/bashmark}"
BASHMARK_MARKS_DIR="$BASHMARK_DIR/marks"

MARK=""
TARGET="$(pwd)"

## Process parameters
while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
       ## Help
        -h|--help)
            echo "marks [OPTIONS]"
            echo
            echo "List bookmarks"
            exit 0
        ;;
    esac
done

## List bookmarks
ls -l "$BASHMARK_MARKS_DIR" | grep -o "\S* -> \S*"
