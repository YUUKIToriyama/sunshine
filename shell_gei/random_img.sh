echo "# ImageMagick pixel enumeration: 5,5,256,srgb"
echo {0..4},{0..4} | tr " " "\n" | awk -F "," '{print $1,$2, int(rand()*256), int(rand()*256), int(rand()*256)}' | xargs printf "%d,%d: (%d,%d,%d)\n"
