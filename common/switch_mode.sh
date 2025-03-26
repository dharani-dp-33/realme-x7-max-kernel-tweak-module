#!/system/bin/sh

if [ "$1" = "performance" ]; then
    sh /common/performance.sh
    echo "Switched to performance mode"
elif [ "$1" = "battery" ]; then
    sh /common/battery.sh
    echo "Switched to battery-saving mode"
else
    echo "Usage: switch_mode.sh [performance|battery]"
fi
