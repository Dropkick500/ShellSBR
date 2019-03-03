#!/bin/bash
# BBC Backlight Controller, or BBC for short
# A Backlight Controller Script, because my i3 hates really XF86 multimedia buttons
echo "Q = Brightness Up"
echo "A = Brightness Down"
while true; do
read -rsn1 input
if [ "$input" = "q" ]; then
    xbacklight -inc 5
    echo "Current XBacklight Brightness:"
    xbacklight -get
fi
if [ "$input" = "a" ]; then
    xbacklight -dec 5
    echo "Current XBacklight Brightness:"
    xbacklight -get
fi
if [ "$input" = "Q" ]; then # Just in case you accidentally turned on caps lock
    xbacklight -inc 5
    echo "Current XBacklight Brightness:"
    xbacklight -get
fi
if [ "$input" = "A" ]; then
    xbacklight -dec 5
    echo "Current XBacklight Brightness:"
    xbacklight -get
fi
done