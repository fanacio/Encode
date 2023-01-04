if [ ! -d "./build" ]; then
    mkdir build
else
    rm -rf build/*
fi
cd build
echo "<-------------------------------Begin Cmake------------------------------->"
cmake -DCMAKE_BUILD_TYPE=Release ..
echo "<-------------------------------End   Cmake------------------------------->"
echo "<-------------------------------Begin  Make------------------------------->"
make -j16
echo "<-------------------------------End    Make------------------------------->"
echo "<-------------------------------Begin   Run------------------------------->"
cd release
./encode_file ../../model/phonedet.param ../../model/phonedet.enprm
./encode_file ../../model/phonedet.bin ../../model/phonedet.enbin
echo "<-------------------------------End     Run------------------------------->"