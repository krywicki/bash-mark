#!/bin/sh
#
# Description: Bookmarking functionality to alias directories for quick navigation

BASHMARK_DIR="${BASHMARK_DIR:-$HOME/.local/share/bashmark}"
BASHMARK_MARKS_DIR="$BASHMARK_DIR/marks"

## Bookmark directory (current by default)
function mark() {
    if [[ -z $1 ]]; then
        echo "missing alias name. e.g. 'mark @mark1'"
        exit 1
    fi


}

## Remove bookmark
function unmark() {

}

## List bookmarks
function marks() {

}
