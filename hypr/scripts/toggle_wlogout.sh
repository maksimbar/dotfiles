#!/bin/bash

if kill -0 $(pidof wlogout) 2>/dev/null; then
    pkill wlogout
else
    wlogout --protocol layer-shell
fi
