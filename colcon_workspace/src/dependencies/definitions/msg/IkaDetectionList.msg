std_msgs/Header header

# List meta information
uint8 id_source  #see definitions/utility/sensor_definitions.h for enum of Sensors
uint8 id_internal

# Actually detections
IkaDetection[] detections
