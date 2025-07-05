import rclpy
from rclpy.node import Node
from std_msgs.msg import String

class DoorLogicNode(Node):

    def __init__(self):
        super().__init__('door_logic_node')
        self.subscription = self.create_subscription(
            String,
            '/door_status',
            self.listener_callback,
            10)
        self.door_status = "unknown"
        self.get_logger().info('Door logic node started and listening...')
        self.timer = self.create_timer(1.0, self.knock_knock_logic)

    def listener_callback(self, msg):
        self.door_status = msg.data
        self.get_logger().info(f'Door status received: {self.door_status}')

    def knock_knock_logic(self):
        if self.door_status == "open":
            self.get_logger().info("✅ Door is open. Proceeding...")
        elif self.door_status == "closed":
            self.get_logger().info("⏳ Door is closed. Waiting...")
        else:
            self.get_logger().info("❓ Unknown door status.")

def main(args=None):
    rclpy.init(args=args)
    node = DoorLogicNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()
