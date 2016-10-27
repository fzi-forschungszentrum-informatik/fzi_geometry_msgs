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
# The MetaPoseWithCovariance msg
#
# It is the probabilistic extension of MetaPose
#
# In general, if values are not given, the corresponding field should be set to NAN. Often, e.g. in
# trajectories the msg holding the container includes flags stating what data values are given.
#
####

# The pose itself, holding a position and orientation
#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/PoseWithCovariance.html
geometry_msgs/PoseWithCovariance pose

# Velocity
#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/TwistWithCovariance.html
geometry_msgs/TwistWithCovariance velocity

# Acceleration
#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/AccelWithCovariance.html
geometry_msgs/AccelWithCovariance accel


# The 2D curvature a trajectory has when passing along this MetaPose.
#
# The curvature2D is very helpful for 2D planning and not efficiently computable from other values.
# That's why we support this special value here.
#
# If no curvature is available, the field should be set to NAN.
#
float64 curvature2D
