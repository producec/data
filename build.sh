#clean up project
echo clean up project
cd 9.7.0
mv core ../
svn revert -R .
svn st --no-ignore | xargs rm -rf
svn up
mv ../core .
cd core
svn revert -R .
svn st --no-ignore | xargs rm -rf
svn up
cd ..

cp -r build_scripts/android/* .
cp android-release-build.ini build.ini
#svn co https://pkg6.ucweb.local/svn/u3_core/branches/9.7.0/shell-core/tangjp-dist-compile core

#start build
#echo start build
#time ant 
cd ..
echo done clean
