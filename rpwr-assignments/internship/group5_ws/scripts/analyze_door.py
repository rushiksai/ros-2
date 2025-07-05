import rclpy
from rclpy.serialization import deserialize_message
from rosbag2_py import SequentialReader, StorageOptions, ConverterOptions
from sensor_msgs.msg import LaserScan

def main():
    bag_path = "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/internship/group5_ws/bags/rosbag2_2025_06_04-13_12_30_0.mcap"

    rclpy.init()

    storage_options = StorageOptions(uri=bag_path, storage_id='mcap')
    converter_options = ConverterOptions('', '')
    reader = SequentialReader()
    reader.open(storage_options, converter_options)

    reader_topics = reader.get_all_topics_and_types()
    topic_type_dict = {t.name: t.type for t in reader_topics}

    scan_topic = "/scan"
    msg_type = topic_type_dict.get(scan_topic)

    if msg_type != "sensor_msgs/msg/LaserScan":
        print(f"Topic {scan_topic} not found or not LaserScan.")
        return

    closed_count = 0
    open_count = 0

    while reader.has_next():
        topic, data, _ = reader.read_next()
        if topic == scan_topic:
            msg = deserialize_message(data, LaserScan)
            # Check front direction (usually center index)
            center_index = len(msg.ranges) // 2
            front_distance = msg.ranges[center_index]

            if front_distance < 1.0:  # Threshold in meters
                print(f"🚪 Door CLOSED at {front_distance:.2f} meters")
                closed_count += 1
            else:
                print(f"🚪 Door OPEN at {front_distance:.2f} meters")
                open_count += 1

    print("\nSummary:")
    print(f"Open detections: {open_count}")
    print(f"Closed detections: {closed_count}")

    rclpy.shutdown()

if __name__ == "__main__":
    main()
