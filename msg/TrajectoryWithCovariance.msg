# -- BEGIN LICENSE BLOCK ----------------------------------------------
# This program is free software licensed under the CDDL
# (COMMON DEVELOPMENT AND DISTRIBUTION LICENSE Version 1.0).
# You can find a copy of this license in LICENSE in the top
# directory of the source code.
#
# © Copyright 2016 FZI Forschungszentrum Informatik, Karlsruhe, Germany
# -- END LICENSE BLOCK ------------------------------------------------

#----------------------------------------------------------------------
# \file
#
# \author  Florian Kuhnt <kuhnt@fzi.de>
# \date    2016-09-15
#
#----------------------------------------------------------------------

####
# The TrajectoryWithCovariance msg
#
# A Trajectory extended by probability information
#
####

# identifier number of this trajectory instance
uint64 id

# The probability of this trajectory
float32 probability


# The probabilistic poses in the trajectory
MetaPoseWithCovarianceStamped[] meta_poses

# Exemplary enumeration values that indicate the trajectory purpose
#int32 UNDEFINED = 0
#int32 PARKING   = 1
#int32 CITY      = 2
#int32 HIGHWAY   = 3
#int32 DYNAMIC   = 4

int32 purpose


#### FLAGS #####

# Flag to indicate if the trajectory holds poses (which is the normal case)
bool poses_available

# Flag to indicate if the trajectory has curvature 2D data available at its MetaPoses.
# See also the MetaPoseWithCovarianceStamped.msg
bool curvature2D_available

# Flag to indicate if the trajectory has velocity info available at its MetaPoses.
# See also the MetaPoseWithCovarianceStamped.msg
bool velocity_available

# Flag to indicate if the trajectory has acceleration info available at its MetaPoses.
# See also the MetaPoseWithCovarianceStamped.msg
bool accel_available

