OF_ROOT=/home/arturo/Desktop/openFrameworks

rm doxygen/* -r
cp $OF_ROOT/libs/openFrameworksCompiled/project/doxygen/build/html/* doxygen/ -r
cd doxygen/
for f in *.html; do mv $f $f.mako; done
cd ..
rm doxygen/of_matrix4x4_8h_source.html.mako 

