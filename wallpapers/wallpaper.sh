number=$(ls /home/ojornag/wallpapers/ | grep 'gif' | wc -l)

wallpaper=$1

if [[ $1 = -1 ]]; then
	wallpaper=$RANDOM
fi

wallpaper=$((wallpaper % number))

eww update wallpaper=$((wallpaper + 1))

swww img --transition-type center /home/ojornag/wallpapers/${wallpaper}.png

sleep 3

swww img /home/ojornag/wallpapers/${wallpaper}.gif
