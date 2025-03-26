#!/system/bin/sh

if [ "$1" = "performance" ]; then
    sh /common/performance.sh
    sh /common/boost.sh
    echo "Switched to performance mode and boosted: All non-essential background and active apps have been closed."
elif [ "$1" = "battery" ]; then
    sh /common/battery.sh
    echo "Switched to battery-saving mode"
elif [ "$1" = "boost" ]; then
    sh /common/boost.sh
    echo "Boost mode activated: All non-essential background and active apps have been closed."
else
    echo "Usage: switch_mode.sh [performance|battery|boost]"
fi
