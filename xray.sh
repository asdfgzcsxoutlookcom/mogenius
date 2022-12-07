#!/bin/sh
if [ ! -f UUID ]; then
  UUID="bb92a3da-abba-41de-b34d-c2d8a7d43f10"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

