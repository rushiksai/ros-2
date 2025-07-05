import rclpy
from rclpy.node import Node

class LaneFollower(Node):
    def __init__(self):
        super().__init__('lane_follower')
        self.get_logger().info("Lane follower node has started.")

def main(args=None):
    rclpy.init(args=args)
    node = LaneFollower()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()
