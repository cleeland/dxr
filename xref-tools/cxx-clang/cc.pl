#!/usr/bin/perl

use Carp qw(croak);
use Env qw(DXRSRC);

my $USAGE = "usage: $ARGV <compiler> <SRCDIR> [other flags ...]";

my $compiler = shift or croak "Specify a compiler to run!\n\n$USAGE\n";
my $srcdir = shift or croak "Specify a source directory!\n\n$USAGE\n";

my @FLAGS=split(/ /, "-Xclang -load -Xclang $DXRSRC/xref-tools/cxx-clang/libclang-index-plugin.so -Xclang -add-plugin -Xclang dxr-index -Xclang -plugin-arg-dxr-index -Xclang $srcdir");

exec $compiler, @FLAGS, @ARGV or croak "Failed to exec $compiler";
