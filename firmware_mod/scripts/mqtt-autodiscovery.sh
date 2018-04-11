#!/bin/sh

source /system/sdcard/config/mqtt.conf
source /system/sdcard/scripts/common_functions.sh

# Motion sensor
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/binary_sensor/$DEVICE_NAME/motion/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME motion sensor\",  \"icon\": \"mdi:run\", \"state_topic\": \"$TOPIC/motion\", \"device_class\": \"motion\"}"

# Motion detection
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/switch/$DEVICE_NAME/motion_detection/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME motion detection\",  \"icon\": \"mdi:run\", \"state_topic\": \"$TOPIC/motion/detection\", \"command_topic\": \"$TOPIC/motion/detection/set\"}"

# LEDs
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/switch/$DEVICE_NAME/blue_led/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME blue led\", \"icon\": \"mdi:led-on\", \"state_topic\": \"$TOPIC/leds/blue\", \"command_topic\": \"$TOPIC/leds/blue/set\"}"
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/switch/$DEVICE_NAME/yellow_led/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME yellow led\", \"icon\": \"mdi:led-on\", \"state_topic\": \"$TOPIC/leds/yellow\", \"command_topic\": \"$TOPIC/leds/yellow/set\"}"
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/switch/$DEVICE_NAME/ir_led/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME ir led\",  \"icon\": \"mdi:led-on\", \"state_topic\": \"$TOPIC/leds/ir\", \"command_topic\": \"$TOPIC/leds/ir/set\"}"

# IR Filter
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/switch/$DEVICE_NAME/ir_cut/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME ir filter\", \"icon\": \"mdi:image-filter-black-white\", \"state_topic\": \"$TOPIC/ir_cut\", \"command_topic\": \"$TOPIC/ir_cut/set\"}"

# Light Sensor
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/sensor/$DEVICE_NAME/ldr/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME light sensor\", \"icon\": \"mdi:brightness-5\", \"device_class\": \"sensor\", \"unit_of_measurement\": \"%\", \"state_topic\": \"$TOPIC/brightness\"}"

# Night mode
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/switch/$DEVICE_NAME/night_mode/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME night mode\", \"icon\": \"mdi:weather-night\", \"state_topic\": \"$TOPIC/night_mode\", \"command_topic\": \"$TOPIC/night_mode/set\"}"

# Auto Night mode
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/switch/$DEVICE_NAME/auto_night_mode/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME auto night mode\", \"icon\": \"mdi:weather-night\", \"state_topic\": \"$TOPIC/auto_night_mode\", \"command_topic\": \"$TOPIC/auto_night_mode/set\"}"

# RTSP Server
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/switch/$DEVICE_NAME/rtsp_server/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME rtsp server\", \"icon\": \"mdi:cctv\", \"state_topic\": \"$TOPIC/rtsp_server\", \"command_topic\": \"$TOPIC/rtsp_server/set\"}"

# Motion Snapshots (soon supported with auto autodiscovery)
/system/sdcard/bin/mosquitto_pub.bin -h "$HOST" -u "$USER" -P "$PASS" -t "$AUTODISCOVERY_PREFIX/camera/$DEVICE_NAME/motion_snapshots/config" ${MOSQUITTOPUBOPTS} ${MOSQUITTOOPTS} -m "{\"name\": \"$DEVICE_NAME motion snapshots\", \"topic\": \"$TOPIC/motion_snapshots\"}"