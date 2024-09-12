wget https://getinklink.net/api/displays/$INKLINK_DEVICE_CODE
mv $INKLINK_DEVICE_CODE $INKLINK_DEVICE_CODE.png
convert $INKLINK_DEVICE_CODE.png -resize 64x32\! $INKLINK_DEVICE_CODE.webp
export DEVICE_ID=$(pixlet devices | cut -d ' ' -f1)
pixlet push $DEVICE_ID $INKLINK_DEVICE_CODE.webp