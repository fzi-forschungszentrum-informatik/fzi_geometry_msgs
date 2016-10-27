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


# This represents a point in free space with uncertainty.
#
# It is a variation of geometry_msgs/PoseWithCovariance


# The point itself
geometry_msgs/Point point

# Row-major representation of the 3x3 covariance matrix
# In order, the parameters are:
# (x, y, z)
float64[9] covariance
