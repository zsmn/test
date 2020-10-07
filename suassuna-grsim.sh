scriptWD=`pwd`

cd WRBackbone
cd trunk
cd build
cd bin
./WRBackbone &> /dev/null &

sleep 5
cd $scriptWD
cd Armorial-Actuator/bin
./Armorial-SimActuator &> /dev/null &

cd $scriptWD
cd ./Armorial-Carrero/bin
./Armorial-Carrero &> /dev/null &


cd $scriptWD
cd ./Armorial-Suassuna/bin
./Armorial-Suassuna yellow right false &> /dev/null &
