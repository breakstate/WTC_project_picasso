#short script to create folders and rename files
#by Brenton Moodley

#__HOW IT WORKS:__
#cp -r is used to make four copies of pics_normal and names them pics_large, pics_medium, pics_small, pics_micro respectively
#directory is changed and files are renamed


#verbose check
if [ "$1" == "1" ]; then v=1; fi

if [ $v ]; then echo "creating folders..."; fi

#make copies of normal and rename
cp -r pics_normal pics_large
if [ $v ]; then echo "large folder created!"; fi

cp -r pics_normal pics_medium
if [ $v ]; then echo "medium folder created!"; fi

cp -r pics_normal pics_small
if [ $v ]; then echo "small folder created!"; fi

cp -r pics_normal pics_micro
if [ $v ]; then echo "micro folder created!\n"; fi

#resize in loop
if [ $v ]; then echo "resizing normal_..."; fi
cd pics_normal
for file in *.JPG
do
    convert "$file" -resize 240x240 "$file"
done

if [ $v ]; then echo "resizing and appending large_..."; fi
cd ../pics_large
for file in *.JPG
do
    convert "$file" -resize 700x700 "$file"
    mv "$file" "large_$file"
done

if [ $v ]; then echo "resizing and appending medium_..."; fi
cd ../pics_medium
for file in *.JPG
do
    convert "$file" -resize 350x350 "$file"
    mv "$file" "medium_$file"

done

if [ $v ]; then echo "resizing and appending small_..."; fi
cd ../pics_small
for file in *.JPG
do
    convert "$file" -resize 175x175 "$file"
    mv "$file" "small_$file"

done

if [ $v ]; then echo "resizing and appending micro_..."; fi
cd ../pics_micro
for file in *.JPG
do
    convert "$file" -resize 25x25 "$file"
    mv "$file" "micro_$file"
done

if [ $v ]; then echo "-rename script exit\n"; fi