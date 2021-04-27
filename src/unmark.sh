#!/bin/sh
#
# Remove bookmark

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
            echo "unmark [OPTIONS] [MARK]"\
            echo
            echo "Remove bookmark"
            echo
            echo "Positional Parameters"
            echo "   MARK - Bookmark name for directory."
            echo
            echo "Optional Parameters"
            echo "  -h,--help   - Print help."

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
rm "$BASHMARK_MARKS_DIR/$MARK"
