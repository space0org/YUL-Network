dnl Copyright (c) 2013-2014 The Bitcoin Core developers
dnl Distributed under the MIT software license, see the accompanying
dnl file COPYING or http://www.opensource.org/licenses/mit-license.php.

dnl BITCOIN_SUBDIR_TO_INCLUDE([CPPFLAGS-VARIABLE-NAME],[SUBDIRECTORY-NAME],[HEADER-FILE])
dnl SUBDIRECTORY-NAME must end with a path separator
AC_DEFUN([BITCOIN_SUBDIR_TO_INCLUDE],[
  if test "x$2" = "x"; then
    AC_MSG_ERROR([BITCOIN_SUBDIR_TO_INCLUDE macro called with empty second argument])
  fi
  if test "x$3" = "x"; then
    AC_MSG_ERROR([BITCOIN_SUBDIR_TO_INCLUDE macro called with empty third argument])
  fi
  AC_MSG_CHECKING([for $3 in $2])
  if test -f "$2$3"; then
    $1="$2"
    AC_MSG_RESULT([yes])
  else
    $1=""
    AC_MSG_RESULT([no])
  fi
])
