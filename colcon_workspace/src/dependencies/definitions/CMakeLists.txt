cmake_minimum_required(VERSION 3.8)
project(definitions)

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


# ROS2 message generation
rosidl_generate_interfaces(${PROJECT_NAME}

  DEPENDENCIES std_msgs geometry_msgs visualization_msgs
)


# Get a list of all message files in the 'msg' directory
file(GLOB MESSAGE_FILES msg/*.msg)

# ROS2 message generation
rosidl_generate_interfaces(${PROJECT_NAME}
  DEPENDENCIES std_msgs geometry_msgs visualization_msgs
  FILES ${MESSAGE_FILES}
  # OR List your message files here, e.g., "msg/YourMessage1.msg"
)


# Link build dependencies to the message files
catkin_package(CATKIN_DEPENDS
    roscpp
    std_msgs
    geometry_msgs
    visualization_msgs
    message_runtime
    INCLUDE_DIRS
        include
        ${EIGEN3_INCLUDE_DIRS}
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${Eigen3_INCLUDE_DIR}
)

## Mark cpp header files for installation
install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)
catkin_workspace/src/dependencies/definitions