# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "afnan: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iafnan:/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(afnan_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv" NAME_WE)
add_custom_target(_afnan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "afnan" "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv" ""
)

get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg" NAME_WE)
add_custom_target(_afnan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "afnan" "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(afnan
  "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/afnan
)

### Generating Services
_generate_srv_cpp(afnan
  "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/afnan
)

### Generating Module File
_generate_module_cpp(afnan
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/afnan
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(afnan_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(afnan_generate_messages afnan_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv" NAME_WE)
add_dependencies(afnan_generate_messages_cpp _afnan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg" NAME_WE)
add_dependencies(afnan_generate_messages_cpp _afnan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(afnan_gencpp)
add_dependencies(afnan_gencpp afnan_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS afnan_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(afnan
  "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/afnan
)

### Generating Services
_generate_srv_eus(afnan
  "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/afnan
)

### Generating Module File
_generate_module_eus(afnan
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/afnan
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(afnan_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(afnan_generate_messages afnan_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv" NAME_WE)
add_dependencies(afnan_generate_messages_eus _afnan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg" NAME_WE)
add_dependencies(afnan_generate_messages_eus _afnan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(afnan_geneus)
add_dependencies(afnan_geneus afnan_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS afnan_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(afnan
  "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/afnan
)

### Generating Services
_generate_srv_lisp(afnan
  "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/afnan
)

### Generating Module File
_generate_module_lisp(afnan
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/afnan
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(afnan_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(afnan_generate_messages afnan_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv" NAME_WE)
add_dependencies(afnan_generate_messages_lisp _afnan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg" NAME_WE)
add_dependencies(afnan_generate_messages_lisp _afnan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(afnan_genlisp)
add_dependencies(afnan_genlisp afnan_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS afnan_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(afnan
  "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/afnan
)

### Generating Services
_generate_srv_nodejs(afnan
  "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/afnan
)

### Generating Module File
_generate_module_nodejs(afnan
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/afnan
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(afnan_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(afnan_generate_messages afnan_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv" NAME_WE)
add_dependencies(afnan_generate_messages_nodejs _afnan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg" NAME_WE)
add_dependencies(afnan_generate_messages_nodejs _afnan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(afnan_gennodejs)
add_dependencies(afnan_gennodejs afnan_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS afnan_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(afnan
  "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/afnan
)

### Generating Services
_generate_srv_py(afnan
  "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/afnan
)

### Generating Module File
_generate_module_py(afnan
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/afnan
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(afnan_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(afnan_generate_messages afnan_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/srv/wordcount.srv" NAME_WE)
add_dependencies(afnan_generate_messages_py _afnan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/afnan/Desktop/AUC_ROS/Day4/catkin_ws/src/afnan/msg/complex.msg" NAME_WE)
add_dependencies(afnan_generate_messages_py _afnan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(afnan_genpy)
add_dependencies(afnan_genpy afnan_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS afnan_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/afnan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/afnan
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(afnan_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/afnan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/afnan
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(afnan_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/afnan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/afnan
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(afnan_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/afnan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/afnan
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(afnan_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/afnan)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/afnan\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/afnan
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(afnan_generate_messages_py std_msgs_generate_messages_py)
endif()
