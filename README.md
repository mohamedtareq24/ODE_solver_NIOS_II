# ODE solver controlled by NIOS II soft processor that I used to simlaute a spring mass damper system

<p align="center">
  <img width="" height="" src="https://user-images.githubusercontent.com/90535558/194957399-4d185166-f86f-493b-a44a-0acefafbf7ad.gif">
</p>

## The system consistes of 3 main blocks
  - ODE solver to numercally calculate the responce of spring-mass-damper system (2nd order ODE)
  - NIOS II processor with JTAG-UART IP & PIOs that will be programmed to provied inputs through a NIOS II terminal opend in host PC 
  - VGA interface to output system's responce 


## the system used 2_16 fixed point repersntaion
### Design procedure
- Simualting hardware using MATLAB
<p align="center">
  <img width="720" height="" src="https://user-images.githubusercontent.com/90535558/194960247-99a3312e-6d80-4166-a704-0c9db3416428.png">
</p>

-	Designing the solver in verilog HDL
<p align="center">
  <img width="" height="" src="https://user-images.githubusercontent.com/90535558/194959934-5d3d09d0-2b1d-4715-bc89-dc2b86bec328.png">
</p>

-	Simulating the verilog module using ModelSim until MATLAB outputs matched Verilog module output
<p align="center">
  <img width="560" height="" src="https://user-images.githubusercontent.com/90535558/194959366-37887306-2ed1-48eb-b1ef-9b952a2fdaf4.png">
</p>

- Addind NIOS II core, JTAG UART & PIOs using Intel platform designer and genratin the HDL
- Integrating the system
<p align="center">
  <img width="720" height="" src="https://user-images.githubusercontent.com/90535558/194960590-1eceaaba-ddf1-449b-8917-caaea0f5a299.png">
</p>
- Codeing the C program for the NIOS II to configure the ODE-Solver inputs 

<p align="center">
  <img width="960" height="" src="https://user-images.githubusercontent.com/90535558/194960729-feffd3c7-d363-45e3-b6b5-ba30fadf641c.png">
</p>

