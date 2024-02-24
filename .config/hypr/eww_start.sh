monitor_id=$(hyprctl monitors | grep 'HDMI-A-1 (' | sed 's/.*ID \(.\).*/\1/g')

eww open bar --screen $monitor_id
eww open status_window --screen $monitor_id
