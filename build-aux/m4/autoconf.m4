m4_include([m4_fatal.m4])

AC_DEFUN([AC_MSG_ERROR],
[m4_fatal([$1])])
