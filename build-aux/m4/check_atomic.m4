# CHECK_ATOMIC
# -----------
# Check if -latomic is needed for <std::atomic>
AC_DEFUN([CHECK_ATOMIC], [
  AC_MSG_CHECKING([whether std::atomic can be used without link library])

  AC_LANG_PUSH(C++)
  AC_COMPILE_IFELSE([AC_LANG_SOURCE([[
    #include <atomic>
    #include <cstdint>
    std::atomic<uint64_t> x(0);
    int main() {
      x.load(std::memory_order_relaxed);
      return 0;
    }
    ]])],
    [AC_MSG_RESULT([yes])],
    [AC_MSG_RESULT([no])
     LIBS="$LIBS -latomic"])
  AC_LANG_POP
])
