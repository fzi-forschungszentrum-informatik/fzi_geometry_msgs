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

# This defines a ros message for transportation of icl_math::MetaPoseStamped.
#
# !! Do not change this type as long as the  !!
# !! icl_math part is unchanged !!

# Header containing meta data
Header header

# The pose itself, holding a position and orientation
geometry_msgs/Pose pose

# The 2D curvature a trajectory has when passing along this MetaPose.
# If no curvature is available, the field should be set to NAN.
float64 curvature2D

# The (scalar) velocity a trajectory has when passing along this MetaPose.
# If no velocity is available, the field should be set to NAN.
float64 velocity

# --- Deprecated: The movement direction will be moved into Trajectory.msg ---
#     in future, so there is only one movement direction in one trajectory
# Enumeration values that indicate driving direction
int8 UNDEFINED = 0
int8 FORWARD   = 1
int8 BACKWARD  = 2

int32 movement_direction
