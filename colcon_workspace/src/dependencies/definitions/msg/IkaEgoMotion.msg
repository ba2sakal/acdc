std_msgs/Header header

# Vehicle motion variables
float32 fsteering_angle              # [rad] Single-Track Steering Angle
float32 fsteering_angle_rate         # [deg/s] Steering Angle Rate
float32 fvelocity                    # [m/s] Velocity Mean, Signed
float32 fvelocity_fr                 # [m/s] Velocity FR, Signed
float32 fvelocity_fl                 # [m/s] Velocity FL, Signed
float32 fvelocity_rr                 # [m/s] Velocity RR, Signed
float32 fvelocity_rl                 # [m/s] Velocity RL, Signed
float32 facceleration_lateral        # [m/s^2] Lateral Acceleration
float32 facceleration_longitudinal   # [m/s^2] Longitudinal Acceleration
float32 fyaw_rate                    # [rad/s] Yaw Rate
float32 fpitch                       # [%] Pitch
float32 ftrack_curvature             # [1/m] Track Curvature
float32 nmoving_dir                  # 0: Standing, 1: Forward, -1: Backward
bool bstand_still                    # True if the vehicle is standing still
