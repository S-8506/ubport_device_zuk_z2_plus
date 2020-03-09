#!/bin/sh
sudo sed -i -e "s/load-module module-droid-discover voice_virtual_stream=true/load-module module-droid-card-24/" /etc/pulse/touch.pa

echo "### Automatically load the Pulseaudio Droid" >> /etc/pulse/touch.pa
echo ".ifexists module-droid-card-24.so" >> /etc/pulse/touch.pa
echo "load-module module-droid-card-24 rate=48000 quirks=+unload_call_exit" >> /etc/pulse/touch.pa
echo ".endif" >> /etc/pulse/touch.pa
echo "" >> /etc/pulse/touch.pa
echo "### Automatically load the audioflinger glue" >> /etc/pulse/touch.pa
echo ".ifexists module-droid-glue-24.so" >> /etc/pulse/touch.pa
echo "load-module module-droid-glue-24" >> /etc/pulse/touch.pa
echo ".endif" >> /etc/pulse/touch.pa

