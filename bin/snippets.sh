#!/bin/sh

bookmark="$(wl-paste)"
file="$HOME/.local/share/snippets"

if grep -q "^$bookmark$" "$file"; then
    notify-send "Oops." "Already there!"
else
    notify-send "Bookmark added" "$bookmark is now saved to snippets."    
    echo "$bookmark" >> "$file"
fi
