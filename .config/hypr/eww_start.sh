monitor_id=$(hyprctl monitors | grep 'HDMI-A-1 (' | sed 's/.*ID \(.\).*/\1/g')

if [ -z "$monitor_id" ]; then
	monitor_id=0
fi

hyprctl dispatch focusmonitor $monitor_id

eww open bar --screen $monitor_id
eww open status_window --screen $monitor_id
