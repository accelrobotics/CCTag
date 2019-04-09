rm -rf build
mkdir -p build
cd build
cmake -DOpenCV_DIR:PATH=/opt/conda/share/OpenCV/ -DCCTAG_WITH_CUDA:BOOL=OFF -DCMAKE_BUILD_TYPE=Release ..
make -j$(grep -c ^processor /proc/cpuinfo) install
cd ..
