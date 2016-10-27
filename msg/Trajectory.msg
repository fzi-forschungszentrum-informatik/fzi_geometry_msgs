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
#
#----------------------------------------------------------------------

# This defines a ros message for transportation of icl_math::Trajectory.
#
# !! Do not change this type as long as the  !!
# !! icl_math part is unchanged !!

MetaPoseStamped[] meta_poses

# Enumeration values that indicate the trajectory purpose
int8 UNDEFINED = 0
int8 PARKING   = 1
int8 CITY      = 2
int8 HIGHWAY   = 3
int8 DYNAMIC   = 4

int32 purpose
# The desirability field is used to distinguish multiple trajectories of same connectivity
float64 desirability

# Flag to indicate if the trajectory holds poses (which is the normal case)
bool poses_available
# Flag to indicate if the trajectory has curvature 2D data available at its MetaPoses.
# See also the MetaPoseStamped.msg
bool curvature2D_available
# Flag to indicate if the trajectory has a velocity available at its MetaPoses.
# See also the MetaPoseStamped.msg
bool velocity_available
