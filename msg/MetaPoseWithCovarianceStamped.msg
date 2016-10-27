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
# The MetaPoseWithCovarianceStamped msg
#
# It is the probabilistic extension of MetaPoseStamped
#
####


# Header containing meta data
Header header

# The meta pose holding the actual data
MetaPoseWithCovariance meta_pose
