std_msgs/Header header

# GPS time variables
uint64 i_time_utc_microseconds
uint64 i_time_gps_microseconds
uint64 i_time_hour
uint64 i_time_minute
uint64 i_time_second
float64 f_time_hsecond
uint64 i_time_day
uint64 i_time_month
uint64 i_time_year

# GPS quality variables
uint16 i_satellites_used # Number of satellites

# Measurement status
int16 STATUS_NO_FIX=-1   # Unable to fix position
int16 STATUS_FIX=0       # Normal fix
int16 STATUS_SBAS_FIX=1  # Fixed using a satellite-based augmentation system
int16 STATUS_GBAS_FIX=2  # or a ground-based augmentation system
int16 STATUS_DGPS_FIX=18 # Fixed with DGPS
int16 STATUS_WAAS_FIX=33 # Fixed with WAAS
int16 n_status

# Extended Measurement status
uint8 STATUS_EXT_NONE=0 # The GPS is not able to make this measurement.
uint8 STATUS_EXT_SEARCH=1 # The GPS system is solving ambiguities and searching for a valid solution. 
uint8 STATUS_EXT_DOPPLER=2 # GPS measurement is based on a Doppler measurement. 
uint8 STATUS_EXT_SPS=3 # Standard Positioning Service, the GPS measurement has no additional external corrections.
uint8 STATUS_EXT_DIFFERENTIAL=4 # The GPS measurement used pseudo-range differential corrections. 
uint8 STATUS_EXT_RTK_FLOAT=5 # The GPS measurement used L1 carrier-phase differential corrections to give a floating ambiguity solution.
uint8 STATUS_EXT_RTK_INTEGER=6 # The GPS measurement used L1/L2 carrier-phase differential corrections to give an integer ambiguity solution. 
uint8 STATUS_EXT_WAAS=7 # The GPS measurement used SBAS corrections.
uint8 STATUS_EXT_OMNISTAR=8 # The GPS measurement used OmniSTAR VBS corrections.
uint8 STATUS_EXT_OMNISTAR_HP=9 # The GPS measurement used OmniSTAR HP corrections. 
uint8 STATUS_EXT_NO_DATA=10 # No Data.
uint8 STATUS_EXT_BLANKED=11 # Blanked. 
uint8 STATUS_EXT_DOPPLER_PP=12 # Doppler GPS measurement post-processed. 
uint8 STATUS_EXT_SPS_PP=13 # SPS GPS measurement post-processed. 
uint8 STATUS_EXT_DIFFERENTIAL_PP=14 # Differential GPS measurement post-processed. 
uint8 STATUS_EXT_RTK_FLOAT_PP=15 # RTK Float GPS measurement post-processed.
uint8 STATUS_EXT_RTK_INTEGER_PP=16 # RTK Integer GPS measurement post-processed.
uint8 STATUS_EXT_OMNISTAR_XP=17 # The GPS measurement used OmniSTAR XP corrections.
uint8 STATUS_EXT_CDGPS=18 # The GPS measurement used real-time Canada-wide DGPS service.
uint8 STATUS_EXT_NOT_RECOGNIZED=19 # Not recognized.
uint8 STATUS_EXT_GXDOPPLER=20 # Computed by combining raw Doppler measurements. 
uint8 STATUS_EXT_GXSPS=21 # Computed by combining raw pseudo-range measurements. 
uint8 STATUS_EXT_GXDIFERENTIAL=22 # Computed by combining raw pseudo-range measurements and differential corrections. 
uint8 STATUS_EXT_GXFLOAT=23 # Computed by combining raw pseudo-range and L1 carrier-phase measurements and differential corrections. 
uint8 STATUS_EXT_GXINTEGER=24 # Computed by combining raw pseudo-range and L1/L2 carrier-phase measurements and differential corrections. 
uint8 STATUS_EXT_IXDOPPLER=25 # Single-satellite updates from raw Doppler measurements.
uint8 STATUS_EXT_IXSPS=26 # Single-satellite updates from raw pseudo-range measurements. 
uint8 STATUS_EXT_IXDIFERENTIAL=27 # Single-satellite updates from raw pseudo-range measurements and differential corrections. 
uint8 STATUS_EXT_IXFLOAT=28 # Single-satellite updates from raw pseudo-range and L1 carrier-phase measurements and differential corrections.
uint8 STATUS_EXT_IXINTEGER=29 # Single-satellite updates from raw pseudo-range and L1/L2 carrier-phase measurements and differential corrections. 
uint8 STATUS_EXT_PPP_CONVERGING=30 # Converging PPP (Precise Point Positioning) from global PPP corrections.
uint8 STATUS_EXT_PPP=31 # Converged PPP (Precise Point Positioning) from global PPP corrections. 
uint8 STATUS_EXT_UNKNOWN=32 # Unknown.
uint8 n_status_ext

# GPS location variables
float64 f_longitude
float64 f_latitude
float64 f_altitude
float64 f_pos_north_stdev
float64 f_pos_east_stdev
float64 f_pos_down_stdev

# GPS position variables
float64 f_angle_heading
float64 f_angle_pitch
float64 f_angle_roll
float64 f_angle_heading_stdev
float64 f_angle_pitch_stdev
float64 f_angle_roll_stdev

# UTM Position
float64 f_utm_east
float64 f_utm_north
float64 f_utm_heading

# GPS velocity variables
float64 f_speed_2d
float64 f_vel_lateral
float64 f_vel_forward
float64 f_vel_north
float64 f_vel_east
float64 f_vel_down
float64 f_vel_north_stdev
float64 f_vel_east_stdev
float64 f_vel_down_stdev

# GPS acceleration variables
float64 f_accel_x
float64 f_accel_y
float64 f_accel_z
float64 f_ang_rate_z
float64 f_ang_rate_y
float64 f_ang_rate_x
