import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/ros2_ws/install/collision_avoid_pkg'
