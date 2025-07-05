import rclpy
from rclpy.node import Node
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist

class TestCollisionAvoidNode(Node):
    def __init__(self):
        super().__init__('test_collision_avoid_node')

        self.cmd_pub = self.create_publisher(Twist, '/cmd_vel_unstamped', 10)
        self.scan_sub = self.create_subscription(LaserScan, '/scan', self.scan_callback, 10)

        self.forward_speed = 0.2  # meters/second
        self.turn_speed = 0.5     # radians/second
        self.safety_distance = 0.5  # meters
        self.get_logger().info('✅ test_collision_avoid_node is running...')


    def scan_callback(self, scan: LaserScan):
        # Check for obstacles directly in front of the robot (a small front arc)
        front_ranges = scan.ranges[len(scan.ranges)//2 - 10 : len(scan.ranges)//2 + 10]
        too_close = any(r < self.safety_distance for r in front_ranges if r > 0.01)

        twist = Twist()

        if too_close:
            self.get_logger().info('🔴 Obstacle ahead! Turning...')
            twist.linear.x = 0.0
            twist.angular.z = self.turn_speed  # Turn in place (right turn)
        else:
            self.get_logger().info('🟢 Path clear. Moving forward...')
            twist.linear.x = self.forward_speed
            twist.angular.z = 0.0

        self.cmd_pub.publish(twist)

def main():
    rclpy.init()
    node = TestCollisionAvoidNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
