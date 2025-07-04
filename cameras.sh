python -m lerobot.teleoperate \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM0 \
    --robot.id=follower \
    --robot.cameras="{ left: {type: opencv, index_or_path: 4, width: 640, height: 480, fps: 30},
                        right: {type: opencv, index_or_path: 6, width: 640, height: 480, fps: 30},
                        wrist: {type: opencv, index_or_path: 8, width: 640, height: 480, fps: 30},
                       }" \
    --teleop.type=so101_leader \
    --teleop.port=/dev/ttyACM1 \
    --teleop.id=leader \
    --display_data=true