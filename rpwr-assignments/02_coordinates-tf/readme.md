```markdown
# Turtlebot Visualization Assignment

## Overview
This project demonstrates how to create and visualize a Turtlebot structure using ROS 2 and RViz through three main tasks:

1. RViz configuration
2. Building a Turtlebot structure
3. Creating following markers for turtles

## Requirements
- ROS 2 (Jazzy recommended)
- Python 3
- ROS 2 packages:
  ```
  rclpy visualization_msgs geometry_msgs std_msgs turtlesim tf_transformations
  ```

## Installation
```bash
python3 -m venv .venv
source .venv/bin/activate
pip install transforms3d
```

## Usage

### Task 1: RViz Setup
```bash
rviz2
ros2 launch turtle_tf2_py turtle_tf2_demo.launch.py
ros2 run turtlesim turtle_teleop_key
```

### Task 2: Single Turtlebot
```bash
python3 turtle_structure.py
```

Creates:
- 2 green floors
- 4 cyan poles  
- 4 purple wheels

### Task 3: Dual Turtles
```bash
python3 dual_turtle_markers.py
```

Features:
- turtle1: green/purple/blue
- turtle2: orange/purple/cyan

## Files
- `turtle_structure.py` - Single turtle visualization
- `dual_turtle_markers.py` - Dual turtle visualization

## Customization
Adjust:
- Colors in `ColorRGBA`
- Dimensions in `scale`
- Marker types

## Troubleshooting
- Verify RViz fixed frame = `/world`
- Check all nodes are running
- Refresh marker display if needed
```

This Markdown format:
1. Uses proper headers with `#` syntax
2. Preserves code blocks with triple backticks
3. Maintains clean section organization
4. Includes proper bullet point formatting
5. Is ready to save as `README.md`

