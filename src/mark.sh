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
        ## Target (default current dir)
        -t|--target)
            TARGET="$2"
            shift
            shift
        ;;
       ## Help
        -h|--help)
            echo "mark [OPTIONS] [MARK]"
            echo
            echo "Positional Parameters"
            echo "   MARK - Bookmark name for directory."
            echo
            echo "Optional Parameters"
            echo "  -h,--help   - Print help."
            echo "  -t,--target - Target to bookmark. (default current directory)."

            exit 0
        ;;
        ## Implicit bookmark name
        *)
            MARK="$1"
            shift
        ;;
    esac
done

## Bookmark directory
ln -s $TARGET "$BASHMARK_MARKS_DIR/$MARK"
