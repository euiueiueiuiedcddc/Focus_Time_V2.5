#!/bin/bash
# Double-click this file to open FocusTime in Chrome's kiosk mode, where
# Escape genuinely does nothing (it's not the page's Fullscreen API at all —
# see the chat for why that's different from what you tested before).
#
# ONE-TIME SETUP before this works (nothing to edit — this is pre-filled
# with your site's URL already):
#   1. The first time you double-click this file, macOS will likely block it
#      as "from an unidentified developer." Right-click the file -> Open ->
#      click Open again in the warning dialog. You only have to do that once
#      — after that, plain double-clicking works like any other app.
#
# Honest limits, same as everywhere else in this project: this only stops
# Escape. Cmd+Q, Cmd+Tab, and Force Quit (Cmd+Option+Esc) all still work
# immediately — a Chrome launch flag can't touch those, only real device
# management (MDM / Apple Configurator) can, and that's a much bigger step
# than this project needs.

URL="https://euiueiueiuiedcddc.github.io/Focus_Time_V2.5/"

# Kiosk mode only takes effect on a fresh launch — if Chrome is already
# open, quit it first so the flag actually applies.
osascript -e 'quit app "Google Chrome"' 2>/dev/null
sleep 1
open -a "Google Chrome" --args --kiosk "$URL"
