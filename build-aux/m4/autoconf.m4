m4_define([AC_MSG_ERROR],
[m4_fatal([$]@)])

m4_define([m4_fatal],
[m4_errprintn([$1])m4_exit(1)])
