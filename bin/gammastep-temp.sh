#!/bin/bash

echo $(gammastep -p 2>&1 | awk '/temperature:/ {print $4}')