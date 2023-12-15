std_msgs/Header header

# Motion Model Attributes
uint8 id_motion_model             # Motion model type 0=UNKNOWN; 1=CV; 2=CA; 3=CTRV; 4=CTRA
float32[] f_mean                  # State vector, containing attributes depending on the chosen motion model
float32[] f_covariance            # Covariance matrix, containing attributes depending on the chosen motion model

# Additional relative properties
# Reference is moving base_link instead of zero velocity base_link
float32 f_rel_vel_x
float32 f_rel_vel_y
float32 f_rel_acc_x
float32 f_rel_acc_y

# Reference Point
uint8 ref_location               # Sensor's object reference location
float32 f_ref_x                 # X-Position of the reference point
float32 f_ref_y                 # Y-Position of the reference point

# Object Meta Data
uint16 id_internal               # Internal ID of the object inside the sensor.
int16 id_lane                    # ID of the lane the car is driving on, usually not used.
uint16 id_type                   # Type of the detected object.
float32[] f_class_probability    # Vector of class-wise probabilities [0..1], sum of all entries is always 1
float32 f_existence_probability  # [0..1]

# Measurement Meta Data
uint16 id_external                 # Source ID of the sensor.
IkaSensorStamp[] meas_hist         # History of measurements of this object.
builtin_interfaces/Time timestamp  # ROS time stamp of the first occurrence of the object
bool b_object_valid                # True if the object contains any relevant information, false for gaps in the objects vector.
bool b_object_new                  # True if the object got measured for the first time in the current time stamp.
bool b_object_measured             # True if the object is being measured by a sensor in the current time stamp.

# For enum types, see definitions/include/definitions/utility/object_definitions.h
