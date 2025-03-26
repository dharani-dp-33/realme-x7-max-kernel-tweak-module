#!/system/bin/sh

# List all background and active apps
apps=$(ps | grep u0_ | awk '{print $2}')

# Exclude essential system processes
for app in $apps; do
    if [ "$app" != "com.android.systemui" ] && [ "$app" != "com.android.phone" ] && [ "$app" != "com.android.settings" ]; then
        kill -9 $app
        echo "Killed app with PID: $app"
    fi
done

echo "Boost mode activated: All non-essential background and active apps have been closed."
