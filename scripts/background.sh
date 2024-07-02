#!/bin/sh
PIDFILE=/tmp/wallpaper.pid

# Check if PID file exists and if the process is still running
if [ -f "$PIDFILE" ] && kill -0 $(cat "$PIDFILE") >/dev/null 2>&1; then
   echo "Script is already running"
   exit 1
fi

# Create PID file
echo $$ > "$PIDFILE"

while true; do
time=$(date +%H:%M | cut -d ':' -f 1)

if [ "$time" -gt 12 ] && [ "$time" -lt 20 ]; then
  feh --randomize --bg-fill ~/Wallpaper/sunset.*.jpg;
fi

if [ "$time" -gt 20 ] && [ "$time" -lt 04 ]; then
  feh --randomize --bg-fill ~/Wallpaper/night.*.jpg;
fi

if [ "$time" -gt 04 ] && [ "$time" -lt 12 ]; then
  feh --randomize --bg-fill ~/Wallpaper/sunrise.*.jpg;
fi
    sleep 300  # Sleep for 5 minutes (300 seconds)
done

# Clean up PID file
rm "$PIDFILE"

