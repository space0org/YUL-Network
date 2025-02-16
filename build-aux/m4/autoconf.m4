m4_define([m4_fatal], [m4_errprintn([$1])m4_exit(1)])

AC_DEFUN([AC_MSG_ERROR],
[m4_fatal([$1])])
