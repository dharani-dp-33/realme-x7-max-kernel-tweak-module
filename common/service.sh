#!/system/bin/sh

# Set CPU governor to performance
for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do
    echo performance > $cpu
done

# Set I/O scheduler to noop
echo noop > /sys/block/mmcblk0/queue/scheduler

# Set memory management settings
echo 10 > /proc/sys/vm/swappiness
echo 20 > /proc/sys/vm/dirty_ratio

# Thermal management settings
# Reduce maximum CPU frequency to manage heat
for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq; do
    echo 1500000 > $cpu
done

# Enable thermal throttling
echo 1 > /sys/devices/system/cpu/cpu*/cpufreq/thermal_throttle_enabled

# Additional thermal management tweaks can be added here
