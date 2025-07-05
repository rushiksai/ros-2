from launch import LaunchDescription
from launch_ros.actions import Node
from ament_index_python.packages import get_package_share_directory
import os

def generate_launch_description():
    controller_yaml = os.path.join(
        get_package_share_directory('lane_follower_knockknock'),
        'config',
        'controller.yaml'
    )

    return LaunchDescription([
        Node(
            package='nav2_controller',
            executable='controller_server',
            name='controller_server',
            output='screen',
            parameters=[controller_yaml]
        ),
        # Add other nodes here...
    ])

