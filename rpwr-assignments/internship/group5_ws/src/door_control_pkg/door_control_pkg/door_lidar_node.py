import rclpy
from rclpy.node import Node
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist

class DoorLidarNode(Node):
    def __init__(self):
        super().__init__('door_lidar_node')
        self.subscription = self.create_subscription(
            LaserScan,
            '/scan',
            self.scan_callback,
            10)
        self.publisher = self.create_publisher(Twist, '/cmd_vel', 10)
        self.get_logger().info('🚪 Door LIDAR logic node started.')

    def scan_callback(self, msg):
        ranges = msg.ranges

        # Look at front 10 degrees (center of scan)
        num_ranges = len(ranges)
        center_range = ranges[num_ranges // 2 - 5 : num_ranges // 2 + 5]
        door_distance = sum(center_range) / len(center_range)

        self.get_logger().info(f'Distance ahead: {door_distance:.2f} meters')

        cmd = Twist()
        if door_distance > 1.0:
            self.get_logger().info('✅ Door is open! Moving forward.')
            cmd.linear.x = 0.2
        else:
            self.get_logger().info('⛔️ Door is closed or blocked. Stopping.')

        self.publisher.publish(cmd)

def main(args=None):
    rclpy.init(args=args)
    node = DoorLidarNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

