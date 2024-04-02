categories=("anime" "evangelion" "minimal" "radium" "centered")

cat_rand=$RANDOM
echo "\n\n$cat_rand\n\n"
category=${categories[$(($cat_rand % ${#categories[@]}))]}

link=$(curl https://api.github.com/repos/dharmx/walls/git/trees/main | jq -r ".tree[] | select(.path==\"$category\") | .url")

dir=$(curl $link)

wall_rand=$RANDOM
echo "\n\n$wall_rand\n\n"
wallpaper=$(echo $dir | jq -r ".tree | .[1:][$wall_rand % length].path")

wget "https://github.com/dharmx/walls/raw/main/$category/$wallpaper"

convert $wallpaper "/home/ojornag/wallpapers/wallpaper.png"

rm $wallpaper

swww img --transition-type center /home/ojornag/wallpapers/wallpaper.png
