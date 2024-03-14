number=$(ls /home/ojornag/wallpapers/ | grep '[[:digit:]]' | tail -n 1 | sed 's/\([[:digit:]]*\).png/\1/')

wallpaper=$1

if [[ $1 = -1 ]]; then
	wallpaper=$RANDOM
fi

wallpaper=$((wallpaper % (number + 1)))

eww update wallpaper=$((wallpaper + 1))

swww img --transition-type center /home/ojornag/wallpapers/${wallpaper}.png
