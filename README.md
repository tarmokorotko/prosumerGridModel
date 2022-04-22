# Prosumer Grid Model
Distribution grid modelling through Prosumer modelling objects in MATLAB Simulink

# General
This repository contains necessary resources to realize an electric power distribution system through the use of prosumer objects. The main purpose for the provided tools is to simplify object modelling for simulating EPS load-flow and developing energy management systems (EMS) or optimization methods.

# Assumptions, prerequisites and limitations
* MATLAB, MATLAB Simulink and MATLAB Simulink Instrument Control Toolbox are required to use the provided tools.
* The models were developed and tested with MATLAB R2021b. Compatibility with older and newer versions is not known.
* You need to include the PoLC.m, prsmr.m and prsmr_functions.m files into your MATLAB path to use the model.

# Getting Started with the IEEE 13-bus example
1. Copy the IEEE_13_BUS_Radial.slx and IEEE_13_feeders_demo.mat into your current folder. 
2. Include the /src folder into your MATLAB path
3. Load the IEEE_13_feeders_demo.mat workspace.
4. Open the IEEE_13_BUS_Radial.slx model.
5. Simulate the model.
6. Investigate the model and use the parameters defined in the workspace to configure Prosumer load profiles
