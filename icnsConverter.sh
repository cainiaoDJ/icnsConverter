#!/bin/bash
if [ ! -f $1.png ];then
    echo "文件不存在"
    exit
fi
mkdir icons.iconset
sips -z 16 16     $1.png --out icons.iconset/icon_16x16.png
sips -z 32 32     $1.png --out icons.iconset/icon_16x16@2x.png
sips -z 32 32     $1.png --out icons.iconset/icon_32x32.png
sips -z 64 64     $1.png --out icons.iconset/icon_32x32@2x.png
sips -z 64 64     $1.png --out icons.iconset/icon_64x64.png
sips -z 128 128   $1.png --out icons.iconset/icon_64x64@2x.png
sips -z 128 128   $1.png --out icons.iconset/icon_128x128.png
sips -z 256 256   $1.png --out icons.iconset/icon_128x128@2x.png
sips -z 256 256   $1.png --out icons.iconset/icon_256x256.png
sips -z 512 512   $1.png --out icons.iconset/icon_256x256@2x.png
sips -z 512 512   $1.png --out icons.iconset/icon_512x512.png
sips -z 1024 1024 $1.png --out icons.iconset/icon_512x512@2x.png
sips -z 1024 1024 $1.png --out icons.iconset/icon_1024x1024.png
iconutil -c icns icons.iconset -o $1.icns
rm -rf icons.iconset
echo "转换完成";