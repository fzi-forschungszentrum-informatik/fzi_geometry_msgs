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

cmake_minimum_required(VERSION 2.8.3)
project(fzi_geometry_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  geometry_msgs
  actionlib
  actionlib_msgs
)

add_message_files(
  DIRECTORY msg
  FILES
  PointWithCovariance.msg
  MetaPoseStamped.msg
  MetaPoseWithCovariance.msg
  MetaPoseWithCovarianceStamped.msg
  Trajectory.msg
  TrajectoryArray.msg
  TrajectoryArraySequence.msg
)

generate_messages(DEPENDENCIES
  geometry_msgs
  std_msgs
  actionlib_msgs
  )

catkin_package(
  CATKIN_DEPENDS message_runtime
)
