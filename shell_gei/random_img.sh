# Usage
# ./random_img.sh | convert "-" output.png

width=100
height=100

echo "# ImageMagick pixel enumeration: $width,$height,255,srgb"
eval echo {0..$(($width - 1))},{0..$(($height - 1))} | tr " " "\n" | awk -F "," '{print $1,$2, int(rand()*256), int(rand()*256), int(rand()*256)}' \
	| xargs -n 5 printf "%d,%d: (%d,%d,%d)\n"
