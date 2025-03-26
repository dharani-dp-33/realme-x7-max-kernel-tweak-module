#!/system/bin/sh

# Set CPU governor to powersave
for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do
    echo powersave > $cpu
done

# Set I/O scheduler to cfq
echo cfq > /sys/block/mmcblk0/queue/scheduler

# Set memory management settings
echo 60 > /proc/sys/vm/swappiness
echo 5 > /proc/sys/vm/dirty_ratio

# Set lower CPU frequencies for battery saving
# Cortex-A78 core at 1.8 GHz
echo 1800000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

# Cortex-A78 cores at 1.6 GHz
for cpu in /sys/devices/system/cpu/cpu[1-3]/cpufreq/scaling_max_freq; do
    echo 1600000 > $cpu
done

# Cortex-A55 cores at 1.2 GHz
for cpu in /sys/devices/system/cpu/cpu[4-7]/cpufreq/scaling_max_freq; do
    echo 1200000 > $cpu
done

# Enable thermal throttling
echo 1 > /sys/devices/system/cpu/cpu*/cpufreq/thermal_throttle_enabled
