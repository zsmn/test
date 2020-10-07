# Armorial-WS

## Installing and compiling entire workspace

```bash
cd scripts
chmod +x ./downloadArmorialWS.sh
sh downloadArmorialWS.sh
```
## To compile entire solution

This script compile all solutions of Armorial Project
```bash
cd scripts
sh ./compileAll.sh
```
## Running Armorial to comunicate with GrSim

This script launch WRBackbone, Armorial-Carrero, Armorial-Suassuna and Armorial-Actuator to run with GrSim

```bash
cd scripts
sh ./runSuassuna-GrSim.sh
```

## Running Armorial step by step

1. Run WRBackbone

```bash
cd Armorial-WS
cd WRBackbone/trunk/build/bin
./WRBackbone
```

2. Run Armorial-Carrero

```bash
cd Armorial-WS
cd Armorial-Carrero/bin
./Armorial-Carrero
```

3. Run Armorial-simActuator

```bash
cd Armorial-WS
cd Armorial-simActuator/bin
./Armorial-simActuator
```

4. Run Armorial-Suassuna

```bash
cd Armorial-WS
cd Armorial-Suassuna/bin
./Armorial-Suassuna
```