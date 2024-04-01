categories=("anime" "evangelion" "minimal" "radium" "centered")

category=${categories[$(($RANDOM % ${#categories[@]}))]}

link=$(curl https://api.github.com/repos/dharmx/walls/git/trees/main | jq -r ".tree[] | select(.path==\"$category\")" | jq -r ".url")

dir=$(curl $link)

wallpaper=$(echo $dir | jq -r ".tree[1:][$RANDOM % length].path")

wget "https://github.com/dharmx/walls/raw/main/$category/$wallpaper"

convert $wallpaper "/home/ojornag/wallpapers/wallpaper.png"

rm $wallpaper

swww img --transition-type center /home/ojornag/wallpapers/wallpaper.png
