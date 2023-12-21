cmake_minimum_required(VERSION 3.8)
project(lidar_detection_r2)

# Workaround to find GeographicLib according to https://bugs.launchpad.net/ubuntu/+source/geographiclib/+bug/1805173
set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH};/usr/share/cmake/geographiclib")

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(tf2 REQUIRED)
find_package(tf2_ros REQUIRED)
find_package(Boost REQUIRED)
find_package(Eigen3 REQUIRED)


find_package(PCL REQUIRED)


find_package(tensorflow_cpp REQUIRED)
find_package(definitions REQUIRED)
# find_package(<dependency> REQUIRED)




# Local directories and dependencies
install(TARGETS gnss_localization_node
  DESTINATION lib/${PROJECT_NAME})

# Set the install directories to the correct locations
install(
    DIRECTORY launch config rviz model
    DESTINATION share/${PROJECT_NAME}/
)

#Install the executables
install(TARGETS
  publisher
  subscriber
  DESTINATION lib/${PROJECT_NAME}
)
























if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
