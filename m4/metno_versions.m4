dnl -*- autoconf -*-
dnl
dnl SYNOPSIS
dnl
dnl   METNO_PVERSION
dnl
dnl DESCRIPTION
dnl
dnl   Parse version info from AC_INIT and add defines and subsitutions.
dnl
dnl   defines:
dnl     PVERSION_MAJOR                    -- program major version
dnl     PVERSION_MINOR                    -- program minor version
dnl     PVERSION_PATCH                    -- program patch level
dnl     PVERSION_MAJOR_DOT_MINOR          -- "major.minor" as string
dnl     PVERSION_NUMBER_MAJOR_MINOR       -- program version number    1000*major+     minor
dnl     PVERSION_NUMBER_MAJOR_MINOR_PATCH -- program version number 1000000*major+1000*minor+patch
dnl   substitutions:
dnl     PVERSION_MAJOR
dnl     PVERSION_MINOR
dnl     PVERSION_PATCH
dnl     PVERSION_MAJOR_DOT_MINOR          -- major.minor
dnl     PVERSION_AM_MAJOR_MINOR           -- major_minor

AC_DEFUN([METNO_PVERSION],[dnl
pversion="`echo $VERSION | sed -e 's/~.*$//'`"
pversion_major="`echo $pversion | cut -d. -f1`"
pversion_minor="`echo $pversion | cut -d. -f2`"
pversion_patch="`echo $pversion | cut -d. -f3`"
pversion_number_major_minor="`printf '%d%03d' $pversion_major $pversion_minor`"
pversion_number_major_minor_patch="`printf '%d%03d%03d' $pversion_major $pversion_minor $pversion_patch`"

if test "$program_suffix" = "NONE"; then
   psuffix=""
else
   psuffix="$program_suffix"
fi

program_transform_name="s&\$\$&-$pversion_major.$pversion_minor&;$program_transform_name"
dnl defines for the C preprocessor
AC_DEFINE_UNQUOTED([PVERSION_MAJOR], [$pversion_major], [program major version])
AC_DEFINE_UNQUOTED([PVERSION_MINOR], [$pversion_minor], [program minor version])
AC_DEFINE_UNQUOTED([PVERSION_PATCH], [$pversion_patch], [program patch level])
AC_DEFINE_UNQUOTED([PVERSION_MAJOR_DOT_MINOR],
    ["${pversion_major}.${pversion_minor}"],
    [program version "major.minor"])
AC_DEFINE_UNQUOTED([PVERSION],
    ["${pversion_major}.${pversion_minor}${psuffix}"],
    [program version "major.minor-suffix" (suffix only if specified)])
AC_DEFINE_UNQUOTED([PVERSION_NUMBER_MAJOR_MINOR],
    [$pversion_number_major_minor],
    [program version number 1000*major+minor])
AC_DEFINE_UNQUOTED([PVERSION_NUMBER_MAJOR_MINOR_PATCH],
    [$pversion_number_major_minor_patch],
    [program version number 1000000*major+1000*minor+patch])
AC_DEFINE_UNQUOTED([PSUFFIX],
    [$psuffix],
    [program suffix])
dnl substitutions for Makefiles etc.
AC_SUBST([PVERSION_MAJOR],           [${pversion_major}])
AC_SUBST([PVERSION_MINOR],           [${pversion_minor}])
AC_SUBST([PVERSION_PATCH],           [${pversion_patch}])
AC_SUBST([PVERSION_MAJOR_DOT_MINOR], [${pversion_major}.${pversion_minor}])
AC_SUBST([PVERSION],                 [${pversion_major}.${pversion_minor}${psuffix}])
AC_SUBST([PVERSION_AM_MAJOR_MINOR],  [${pversion_major}_${pversion_minor}])
AC_SUBST([PSUFFIX],                  [${psuffix}])

AC_DEFINE_UNQUOTED([PREFIX], ["$prefix"], [package prefix])
AC_DEFINE_UNQUOTED([SYSCONFDIR], ["$sysconfdir"], [package config dir (usually /etc or /usr/local/etc)])
])
