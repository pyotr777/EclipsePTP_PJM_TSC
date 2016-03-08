# Target System Configurations 

TSCs for using with Eclipse PTP and "K", FX10 and other supercomputers with Fujitsu "Parallelnavi" job scheduling system.

For instructions on using Eclipse PTP with K and FX10 computers see manual.pdf.

Refer to http://pyotr777.github.io/EclipsePTP_PJM_TSC for more information on Eclipse PTP and TAU for K and FX10 computers.

### Installation procedure.

1. In Eclipse PTP create targetConfigurations project: 
  1. Import.. / Target System Configurations / Target Configurations from plugin
  2. Select any TSC
2. In terminal:
  1. cd to targetConfigurations project folder.
  2. ```rm .* *```
  2. ```git clone https://github.com/pyotr777/EclipsePTP_PJM_TSC.git```
  3. ```cd EclipsePTP_PJM_TSC```
  4. ```./install.sh```
