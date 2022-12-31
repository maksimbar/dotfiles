#!/bin/bash

sed -e 's/set/@define-color/gI' -e 's/\$//' -e 's/$/;/' base16-everforest.config >base16-everforest.css
