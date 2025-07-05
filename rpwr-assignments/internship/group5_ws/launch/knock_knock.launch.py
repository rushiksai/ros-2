from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='lane_follower_knockknock',
            executable='main',
            name='lane_follower_node',
            output='screen'
        )
    ])
