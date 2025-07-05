# Install script for directory: /home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/ros2_ws/src/turtlebot4/turtlebot4_navigation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/install/turtlebot4_navigation")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation" TYPE DIRECTORY FILES
    "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/ros2_ws/src/turtlebot4/turtlebot4_navigation/config"
    "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/ros2_ws/src/turtlebot4/turtlebot4_navigation/launch"
    "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/ros2_ws/src/turtlebot4/turtlebot4_navigation/maps"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation/environment" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_environment_hooks/pythonpath.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation/environment" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_environment_hooks/pythonpath.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.12/site-packages/turtlebot4_navigation-2.0.1-py3.12.egg-info" TYPE DIRECTORY FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_python/turtlebot4_navigation/turtlebot4_navigation.egg-info/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.12/site-packages/turtlebot4_navigation" TYPE DIRECTORY FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/ros2_ws/src/turtlebot4/turtlebot4_navigation/turtlebot4_navigation/" REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(
        COMMAND
        "/usr/bin/python3" "-m" "compileall"
        "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/install/turtlebot4_navigation/lib/python3.12/site-packages/turtlebot4_navigation"
      )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.12/site-packages" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/ros2_ws/src/turtlebot4/turtlebot4_navigation/turtlebot4_navigation/turtlebot4_navigator.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(
        COMMAND
        "/usr/bin/python3" "-m" "compileall"
        "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/install/turtlebot4_navigation/lib/python3.12/site-packages/turtlebot4_navigator.py"
      )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/turtlebot4_navigation")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/turtlebot4_navigation")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation/environment" TYPE FILE FILES "/opt/ros/jazzy/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation/environment" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation/environment" TYPE FILE FILES "/opt/ros/jazzy/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation/environment" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_environment_hooks/path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_environment_hooks/local_setup.bash")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_environment_hooks/local_setup.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_environment_hooks/package.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_index/share/ament_index/resource_index/packages/turtlebot4_navigation")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation/cmake" TYPE FILE FILES
    "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_core/turtlebot4_navigationConfig.cmake"
    "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/ament_cmake_core/turtlebot4_navigationConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot4_navigation" TYPE FILE FILES "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/ros2_ws/src/turtlebot4/turtlebot4_navigation/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/rushiksaiii/Desktop/ROS/rpwr-assignments/06_navigation/build/turtlebot4_navigation/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
