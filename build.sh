set -e
sudo apt-get install --no-install-recommends libboost-all-dev
rm -rf build
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=debug -DBUILD_TESTING=ON -DOPENCL_INCLUDE_DIRS=$PWD/../CL-Headers -DOPENCL_LIBRARIES=$PWD/../ICD-LIB/build ..
make
sudo make install 
#uninstall package
#sudo xargs rm < install_manifest.txt