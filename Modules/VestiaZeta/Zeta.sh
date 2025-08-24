# Original Zeta Script

service call SurfaceFlinger 1035 i32 0

# Attempt to go universal
# Get all available refresh rates
rates=$(dumpsys display | tr ',' '\n' | awk -F= '/^ fps/ {v[$2]=1} END {for (r in v) print r}' | sort -nr)

# Get highest rate and convert to integer
max_rate=$(echo "$rates" | head -1 | cut -d. -f1)

# Apply settings
settings put system min_refresh_rate $max_rate
settings put system peak_refresh_rate $max_rate