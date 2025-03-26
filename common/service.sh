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

# Set CPU frequencies based on Realme X7 Max specifications
# Cortex-A78 core at 3.0 GHz
echo 3000000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

# Cortex-A78 cores at 2.6 GHz
for cpu in /sys/devices/system/cpu/cpu[1-3]/cpufreq/scaling_max_freq; do
    echo 2600000 > $cpu
done

# Cortex-A55 cores at 2.0 GHz
for cpu in /sys/devices/system/cpu/cpu[4-7]/cpufreq/scaling_max_freq; do
    echo 2000000 > $cpu
done

# Enable thermal throttling
echo 1 > /sys/devices/system/cpu/cpu*/cpufreq/thermal_throttle_enabled

# Additional performance and thermal management tweaks can be added here
