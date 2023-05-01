bag_path="$PWD/bags"
preprocessed_path="$PWD/result"
docker run \
  --rm \
  -v $bag_path:/tmp/input_bags \
  -v $preprocessed_path:/tmp/preprocessed \
  koide3/direct_visual_lidar_calibration:humble \
  ros2 run direct_visual_lidar_calibration preprocess -a /tmp/input_bags /tmp/preprocessed
