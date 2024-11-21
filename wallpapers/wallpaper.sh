path=/home/ojornag/wallpapers

wallpaper_number=$(($(ls $path -1 | wc -l) - 1))

random_wallpaper=$(($RANDOM % $wallpaper_number))

while [ $random_wallpaper == $1 ]
do
	random_wallpaper=$(($RANDOM % $wallpaper_number))
done

eww update current_wallpaper=$random_wallpaper

swww img --transition-type center $path/$random_wallpaper.*
