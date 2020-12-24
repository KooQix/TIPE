#! /bin/bash


#Compilation
cd src
make
rm moc_* *.o
mv TIPE ../bin
cd ..

#Generate documentation
mv Doxyfile src/
cd src/
doxygen Doxyfile
mv html/ latex/ ../doc/
mv Doxyfile ../
cd ..