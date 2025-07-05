#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan
import random


class CollisionAvoider(Node):

    def __init__(self):
        super().__init__('collision_avoider')
        self.publisher_ = self.create_publisher(Twist, '/cmd_vel_unstamped', 10)
        self.subscription = self.create_subscription(LaserScan, '/scan', self.scan_callback, 10)
        self.timer = self.create_timer(0.1, self.move_forward)
        self.collision_detected = False

    def scan_callback(self, msg):
        front_ranges = msg.ranges[len(msg.ranges)//2 - 10 : len(msg.ranges)//2 + 10]
        if any(r < 0.4 for r in front_ranges if r > 0.0):  # Filter out 0.0 (no reading)
            self.collision_detected = True
        else:
            self.collision_detected = False

    def move_forward(self):
        twist = Twist()
        if self.collision_detected:
            twist.angular.z = random.choice([-1.0, 1.0])  # Turn randomly left or right
            twist.linear.x = 0.0
        else:
            twist.linear.x = 0.2
            twist.angular.z = 0.0
        self.publisher_.publish(twist)


def main(args=None):
    rclpy.init(args=args)
    node = CollisionAvoider()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
