#!/bin/bash

kill -0 $(pidof tofi) 2>/dev/null && pkill tofi || tofi-drun | xargs swaymsg exec --
