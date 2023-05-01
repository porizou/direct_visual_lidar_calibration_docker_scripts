bag_path="$PWD/bags"
preprocessed_path="$PWD/result"
docker run \
  --rm \
  --net host \
  -e DISPLAY=$DISPLAY \
  -e QT_X11_NO_MITSHM=1 \
  -e LIBGL_ALWAYS_SOFTWARE=1 \
  -v $HOME/.Xauthority:/root/.Xauthority \
  -v $preprocessed_path:/tmp/preprocessed \
  koide3/direct_visual_lidar_calibration:humble \
  ros2 run direct_visual_lidar_calibration initial_guess_manual /tmp/preprocessed
