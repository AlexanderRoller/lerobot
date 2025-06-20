#!/usr/bin/env bash

# Basic teleoperation command for the SO101 robot and leader arm.
# Adjust the USB ports and IDs to match your setup.

python -m lerobot.teleoperate \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM0 \
    --robot.id=follower \
    --teleop.type=so101_leader \
    --teleop.port=/dev/ttyACM1 \
    --teleop.id=leader
