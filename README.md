# ODE solver controlled by NIOS II soft processor that I used to simlaute a spring mass damper system

<p align="center">
  <img width="" height="" src="https://user-images.githubusercontent.com/90535558/194957399-4d185166-f86f-493b-a44a-0acefafbf7ad.gif">
</p>

## The system consistes of 3 main blocks
  - ODE solver to numercally calculate the responce of spring-mass-damper system (2nd order ODE)
  - NIOS II processor with JTAG-UART IP & PIOs that will be programmed to provied inputs through a NIOS II terminal opend in host PC 
  - VGA interface to output system's responce 
