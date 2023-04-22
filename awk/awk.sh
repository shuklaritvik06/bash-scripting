#!/bin/bash
awk 'BEGIN {print "Hello World"}'
awk '{print}' "$1"
awk '{print $1}' "$1"
awk '{print $1, $2}' "$1"
awk '/hello/ {print $1, $2}' "$1"
awk -F: '{print $1, $2}' "$1"
