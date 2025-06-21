#!/usr/bin/env bash

# Teleoperate the SO101 robot with overhead and wrist cameras
# Adjust camera device paths and serial IDs to match your setup.

python -m lerobot.teleoperate \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM0 \
    --robot.id=follower \
    --robot.cameras="{ overhead: {type: opencv, index_or_path: /dev/video6, width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: /dev/video4, width: 640, height: 480, fps: 30}}" \
    --teleop.type=so101_leader \
    --teleop.port=/dev/ttyACM1 \
    --teleop.id=leader

