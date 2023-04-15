bag_path="$PWD/bags"
preprocessed_path="$PWD/result"
docker run \
  --rm \
  -v $preprocessed_path:/tmp/preprocessed \
  koide3/direct_visual_lidar_calibration:humble \
  bash -c "ros2 run direct_visual_lidar_calibration find_matches_superglue.py /tmp/preprocessed && \
           ros2 run direct_visual_lidar_calibration initial_guess_auto /tmp/preprocessed"
