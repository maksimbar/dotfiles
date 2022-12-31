#!/bin/bash

kill -0 $(pidof wofi) 2>/dev/null && pkill wofi || wofi --show=drun
