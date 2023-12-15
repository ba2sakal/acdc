cmake_minimum_required(VERSION 3.8)
project(definitions)


set(CMAKE_CXX_STANDARD 17)
find_package(ros_environment REQUIRED QUIET)
set(ROS_VERSION $ENV{ROS_VERSION})
add_compile_definitions(ROS_VERSION=$ENV{ROS_VERSION})
add_compile_definitions(ROS_DISTRO=$ENV{ROS_DISTRO})

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(visualization_msgs REQUIRED)
find_package(tf2 REQUIRED)
find_package(Eigen3 REQUIRED)

find_package(rosidl_default_generators REQUIRED)


# ROS2 message generation
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/ASNbitstring.msg"
  "msg/IkaDetection.msg"
  "msg/IkaDetectionList.msg"
  "msg/IkaEgoMotion.msg"
  "msg/IkaGPS.msg"
  "msg/IkaObject.msg"
  "msg/IkaObjectList.msg"
  "msg/IkaSensorStamp.msg"
  DEPENDENCIES std_msgs geometry_msgs visualization_msgs
)


# Include directories
include_directories(
  include
  ${Eigen3_INCLUDE_DIRS}
)

# Install header files
install(DIRECTORY include
  DESTINATION include/${PROJECT_NAME}/
)

# If building with testing enabled
if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

# Ament package
ament_package()