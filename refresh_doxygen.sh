#!/usr/bin/env bash
OF_ROOT=/home/arturo/Desktop/openFrameworks
OF_SITE_ROOT=$(pwd)

cd $OF_ROOT/libs/openFrameworksCompiled/project/doxygen && doxygen Doxyfile
cd $OF_SITE_ROOT
mkdir doxygen
rm -r doxygen/* 
cp -R $OF_ROOT/libs/openFrameworksCompiled/project/doxygen/build/html/* doxygen/ 
cd doxygen/
for f in *.html; do mv $f $f.mako; done
cd ..
rm doxygen/of_matrix4x4_8h_source.html.mako 
