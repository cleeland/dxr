#!/bin/sh

wrapperscript=$DXRSRC/xref-tools/cxx-clang/cc.pl

export CC="$wrapperscript clang $SRCDIR"
export CXX="$wrapperscript clang++ $SRCDIR"
export CCC=$CXX

export CC_clang=$CC
export CCC_clang=$CCC

export DXR_INDEX_OUTPUT="$OBJDIR"
export DXR_ENV_SET="true"
