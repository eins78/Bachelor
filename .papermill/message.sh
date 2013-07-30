#!/bin/sh

# Generate costum commit messages

# Get the local time
echo "Local Time: $(date)"

### if on OS X, ask iTunes for the current playing track
[[ $(uname) == "Darwin" ]] && echo "iTunes: $(osascript -e 'tell application "System Events" to if ((name of processes) contains "iTunes") then do shell script ("osascript -e " & quoted form of ("tell application \"iTunes\" to if player state is playing then \"is playing: \" & name of current track & \" - \" & artist of current track" & ""))')"

### if on OS X, get the current Wifi SSID #fixme
[[ $(uname) == "Darwin" ]] && AIRPORT_STATUS=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)
echo "$AIRPORT_STATUS" | grep "AirPort: Off">/dev/null && WIFI_STATUS="Off"
[[ ! $WIFI_STATUS == "Off" ]] && WIFI_STATUS=$(echo "$AIRPORT_STATUS" | awk -F': ' '/ SSID/ {print $2}') && echo "Wifi SSID: "$WIFI_STATUS""
#

### if on OS X, get Software info from 'system_profiler' #fixme
[[ $(uname) == "Darwin" ]] && SYSPROF_SOFTW=$(system_profiler SPSoftwareDataType)
[[ $(uname) == "Darwin" ]] && echo "$SYSPROF_SOFTW" | grep "User Name: " | cut -c 7-99
[[ $(uname) == "Darwin" ]] && echo "$SYSPROF_SOFTW" | grep "System Version: " | cut -c 7-99
[[ $(uname) == "Darwin" ]] && echo "$SYSPROF_SOFTW" | grep "Time since boot: " | cut -c 7-99

### if on OS X, get Hardware and Power info from 'system_profiler'
[[ $(uname) == "Darwin" ]] && SYSPROF_HARDW=$(system_profiler SPHardwareDataType)
[[ $(uname) == "Darwin" ]] && echo "$SYSPROF_HARDW" | grep "Model Name: " | cut -c 7-99
[[ $(uname) == "Darwin" ]] && echo "$SYSPROF_HARDW" | grep "Model Identifier: " | cut -c 7-99
[[ $(uname) == "Darwin" ]] && echo "$SYSPROF_HARDW" | grep "Model Name: " | cut -c 7-99
[[ $(uname) == "Darwin" ]] && SYSPROF_POWER=$(system_profiler SPPowerDataType)
[[ $(uname) == "Darwin" ]] && echo "AC Charger $(echo "$SYSPROF_POWER" | grep "Connected: Yes" | cut -c 7-99)"
[[ $(uname) == "Darwin" ]] && echo "$SYSPROF_POWER" | grep "Fully Charged: " | cut -c 11-99
[[ $(uname) == "Darwin" ]] && echo "$SYSPROF_POWER" | grep "Charging: " | head -1 | cut -c 11-99
[[ $(uname) == "Darwin" ]] && echo "$SYSPROF_POWER" | grep "Charge Remaining (mAh): " | cut -c 11-99

#[[ $(uname) == "Darwin" ]] && system_profiler SPNetworkDataType | grep -B5 -A1 "Has IP Assigned: Yes"

### if on OS X, get active network info from 'system_profiler' #fixme
#[[ $(uname) == "Darwin" ]] && echo "Network: "
### if TempMonitor.app is installed, get the current Temperature
[[ $(uname) == "Darwin" ]] &&MAC_TEMPERATURE_TOOL="/Applications/TemperatureMonitor.app/Contents/MacOS/tempmonitor"
[[ $(uname) == "Darwin" ]] && [[ -f "$MAC_TEMPERATURE_TOOL" ]] && echo Temperature "$($MAC_TEMPERATURE_TOOL -a -l -c)"

