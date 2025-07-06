# Door Detection Node - Internship Project

## Overview

This ROS2 node monitors a door using LIDAR data and detects when the door opens. Upon door opening detection, the robot moves forward for a short duration. The node also publishes visualization markers to represent detected obstacles.

---

## Setup Environment

```bash
cd ~/Desktop/ROS/rpwr-assignments/internship/group5_ws
source install/setup.bash

ros2 run door_control_pkg door_lidar_node

Expected Behavior and Output

    The node subscribes to the /scan topic to receive LaserScan messages.

    Initially, it sets a reference distance when the door is assumed closed.

    It continuously monitors the distance at an angle centered around -90°.

    If the distance increases beyond a threshold for 5 seconds, it confirms the door is open.

    Upon confirmation, it moves the robot forward at 0.1 m/s for 3 seconds.

    Publishes visualization markers (/door_marker) for detected obstacles in the map frame.

    Logs messages:

        Tür-Referenz gesetzt: X.XX m — baseline reference distance.

        🚪 Tür offen – Starte Vorwärtsbewegung. — door open detected, moving forward.

        ✅ Vorwärtsbewegung abgeschlossen. — forward movement completed.

    Handles transformation errors with warning logs.


