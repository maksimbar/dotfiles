#!/bin/bash

kill -0 $(pidof tofi) 2>/dev/null && pkill tofi || 

case "$(echo -e "hex\nrgb\nhsl\nhsv\ncmyk" | tofi --prompt-text "Format:")" in
"hex")  exec  hyprpicker -f hex  -a ;;
"rgb")  exec  hyprpicker -f rgb  -a ;;
"hsl")  exec  hyprpicker -f hsl  -a ;;
"hsv")  exec  hyprpicker -f hsv  -a ;;
"cmyk") exec  hyprpicker -f cmyk -a ;;
esac
