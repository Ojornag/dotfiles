path=/home/ojornag/wallpapers/

wallpaper_number=$(($(ls $path -1 | wc -l) - 1))

random_wallpaper=$(($RANDOM % $wallpaper_number))

swww img --transition-type center $path/$random_wallpaper.*
