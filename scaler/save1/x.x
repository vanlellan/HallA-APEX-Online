# This file: scaler.map
# Author: Robert Michaels, Jlab
# Contains time-dependent text-based mapping of Hall A scaler channels
# which permits getting data from THaScaler by names like "bcm_u3".
# Also contains "directives" that control xscaler and simplify
# the map, e.g. tying helicity scaler map to non-helicity scaler 
# For documentation about this file, see
# http://hallaweb.jlab.org/equipment/daq/THaScaler.html (scroll to "scaler.map"
# near the end of that web page).
#
# ------ April 11, 2018

DATE 11 4 2018

# Setup for Tritium e'p

# Helicity-gated scalers are two "virtual" slots derived from one scaler unit

# directives for Left HRS

xscaler-tabs Left 0:Empty 1:Norm 2:Empty 3:S2m 4:Trig-Cher-S0 5:Empty 6:Empty
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:4x4 6:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 
xscaler-pagename Left 0:'L-HRS LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS Normalization (it is not gated by helicity)'
xscaler-pagename Left 2:'L-HRS '
xscaler-pagename Left 3:'L-HRS S2m Left and Right (4th physical slot)'
xscaler-pagename Left 4:'L-HRS Triggers, Gas Cherenkov,and S0 (5th physical slot)'
xscaler-pagename Left 5:'L-HRS '
xscaler-pagename Left 6:'L-HRS '

xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:4 chan:7 rate:103700

#
# directives for Right HRS
xscaler-tabs Right 0:Empty 1:Trig-Cher-S0 2:S2m 3:Norm 4:empty 5:empty 6:empty
xscaler-layout Right 0:4x4 1:8x4 2:8x4 3:8x4 4:4x4 5:4x4 6:4x4
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6
xscaler-pagename Right 0:'LeCroy Scaler in 1st slot'
xscaler-pagename Right 1:'R-HRS Triggers, Gas Cherenkov, and s0'
xscaler-pagename Right 2:'R-HRS S2m Left and Right'
xscaler-pagename Right 3:'R-HRS Normalization'
xscaler-pagename Right 4:'BCMs Scalar in 5th slot'
xscaler-pagename Right 5:'Caen Scalar in 6th slot'
xscaler-pagename Right 6:'Caen Scalar in 7th slot'

xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:1 chan:9 rate:1024

# Left HRS:  
# Normalization scaler in software slot 3, which is hardware slot 2  
# (software 0=Lecroy, software [1,2] = helicity scaler sorted by helicity)

# desc        hel crate slot  start nchan  long-description
1               0   8     0     0     1      
2               0   8     0     1     1     
3               0   8     0     2     1      
4               0   8     0     3     1      
5               0   8     0     4     1      
6               0   8     0     5     1      
7               0   8     0     6     1      
8               0   8     0     7     1      
9               0   8     0     8     1      
10              0   8     0     9     1      
11              0   8     0     10    1      
12              0   8     0     11    1      
13              0   8     0     12    1      
14              0   8     0     13    1      
15              0   8     0     14    1      
16              0   8     0     15    1     

T1              0   8     1     0     1      Trigger 1   
T2              0   8     1     1     1      Trigger 2
T3              0   8     1     2     1      Trigger 3
MLUpul         0   8     1     3     1      
FakeCo         0   8     1     4     1      EDTM random pulser as fake coinc
L1A_Remote      0   8     1     5     1      L1A remote signal from RHRS
Clock_RHRS      0   8     1     6     1      
Clock_LHRS      0   8     1     7     1      
Sh-Sum          0   8     1     8     1    
(S0||S2)L       0   8     1     9     1
S2L             0   8     1     10    1      LHRS S2L signal
S2R             0   8     1     11    1      LHRS S2R signal
(S0||S2)R       0   8     1     12    1      Retiming signal from RHRS
ADC_gate        0   8     1     13    1      
L1A_copy        0   8     1     14    1      LHRS L1A
RF_Time         0   8     1     15    1
L1A             0   8     1     16    1      L1A directly from TS2 output.
unew            0   8     1     18    1      
dnew            0   8     1     20    1      
unser           0   8     1     22    1      
u1              0   8     1     24    1      
d1              0   8     1     26    1      
d3              0   8     1     28    1      
d10             0   8     1     30    1 

1               0   8     2     0     1      
2               0   8     2     1     1      
3               0   8     2     2     1      
4               0   8     2     3     1      
5               0   8     2     4     1      
6               0   8     2     5     1      
7               0   8     2     6     1      
8               0   8     2     7     1      
9               0   8     2     8     1      
10              0   8     2     9     1      
11              0   8     2     10    1      
12              0   8     2     11    1      
13              0   8     2     12    1      
14              0   8     2     13    1     
15              0   8     2     14    1      
16              0   8     2     15    1      
17              0   8     2     16    1      
18              0   8     2     17    1      
19              0   8     2     18    1      
20              0   8     2     19    1      
21              0   8     2     20    1      
22              0   8     2     21    1      
23              0   8     2     22    1      
24              0   8     2     23    1      
25              0   8     2     24    1      
26              0   8     2     25    1      
27              0   8     2     26    1      
28              0   8     2     27    1      
29              0   8     2     28    1      
30              0   8     2     29    1      
31              0   8     2     30    1      
32              0   8     2     31    1

S2mL-1          0   8     3     0     1
S2mL-2          0   8     3     1     1
S2mL-3          0   8     3     2     1
S2mL-4          0   8     3     3     1
S2mL-5          0   8     3     4     1
S2mL-6          0   8     3     5     1
S2mL-7          0   8     3     6     1
S2mL-8          0   8     3     7     1
S2mL-9          0   8     3     8     1
S2mL-10         0   8     3     9     1
S2mL-11         0   8     3     10    1
S2mL-12         0   8     3     11    1
S2mL-13         0   8     3     12    1
S2mL-14         0   8     3     13    1
S2mL-15         0   8     3     14    1
S2mL-16         0   8     3     15    1
S2mR-1          0   8     3     16    1
S2mR-2          0   8     3     17    1
S2mR-3          0   8     3     18    1
S2mR-4          0   8     3     19    1
S2mR-5          0   8     3     20    1
S2mR-6          0   8     3     21    1
S2mR-7          0   8     3     22    1
S2mR-8          0   8     3     23    1
S2mR-9          0   8     3     24    1
S2mR-10         0   8     3     25    1
S2mR-11         0   8     3     26    1
S2mR-12         0   8     3     27    1
S2mR-13         0   8     3     28    1
S2mR-14         0   8     3     29    1
S2mR-15         0   8     3     30    1
S2mR-16         0   8     3     31    1   
   
T1              0   8     4     0     1      Trigger 1
T2              0   8     4     1     1      Trigger 2
T3              0   8     4     2     1      Trigger 3
MLUpul         0   8     4     3     1      
Fakeco         0   8     4     4     1      EDTM random pulser as fake coinc
L1A_Remote      0   8     4     5     1      L1A remote signal from RHRS
Clock_RHRS      0   8     4     6     1
Clock_LHRS      0   8     4     7     1
Sh-Sum          0   8     4     8     1      
(S0||S2)L       0   8     4     9     1
S2L             0   8     4     10    1      LHRS S2L signal
S2R             0   8     4     11    1      LHRS S2R signal
(S0||S2)R       0   8     4     12    1      Retiming signal from RHRS
ADC_gate        0   8     4     13    1      
L1A             0   8     4     14    1      LHRS L1A
RF_Time         0   8     4     15    1
Cher-1          0   8     4     16    1
Cher-2          0   8     4     17    1
Cher-3          0   8     4     18    1
Cher-4          0   8     4     19    1
Cher-5          0   8     4     20    1
Cher-6          0   8     4     21    1
Cher-7          0   8     4     22    1
Cher-8          0   8     4     23    1
Cher-9          0   8     4     24    1
Cher-10         0   8     4     25    1
Cher-sum        0   8     4     26    1
S0-A            0   8     4     27    1
S0-B            0   8     4     28    1
S0A_and_S0B     0   8     4     29    1
L1A_Rcopy             0   8     4     30    1
S2L_and_S2R     0   8     4     31    1

1               0   8     5     0     1      
2               0   8     5     1     1      
3               0   8     5     2     1      
4               0   8     5     3     1      
5               0   8     5     4     1      
6               0   8     5     5     1      
7               0   8     5     6     1      
8               0   8     5     7     1      
9               0   8     5     8     1      
10              0   8     5     9     1      
11              0   8     5     10    1      
12              0   8     5     11    1      
13              0   8     5     12    1      
14              0   8     5     13    1     
15              0   8     5     14    1      
16              0   8     5     15    1 

1               0   8     6     0     1      
2               0   8     6     1     1      
3               0   8     6     2     1       
4               0   8     6     3     1      
5               0   8     6     4     1      
6               0   8     6     5     1      
7               0   8     6     6     1      
8               0   8     6     7     1      
9               0   8     6     8     1      
10              0   8     6     9     1      
11              0   8     6     10    1      
12              0   8     6     11    1      
13              0   8     6     12    1      
14              0   8     6     13    1     
15              0   8     6     14    1      
16              0   8     6     15    1      
17              0   8     6     16    1      
18              0   8     6     17    1      
19              0   8     6     18    1      
20              0   8     6     19    1      
21              0   8     6     20    1      
22              0   8     6     21    1      
23              0   8     6     22    1    
24              0   8     6     23    1      
25              0   8     6     24    1      
26              0   8     6     25    1      
27              0   8     6     26    1      
28              0   8     6     27    1      
29              0   8     6     28    1      
30              0   8     6     29    1      
31              0   8     6     30    1      
32              0   8     6     31    1 

# Right HRS   

T1            0   7     1     0    1      LHRS single trigger
T2            0   7     1     1    1      LHRS single trigger
T3            0   7     1     2    1      LHRS single trigger
C1            0   7     1     3    1      Coincidence 1
C2            0   7     1     4    1      Coincidence 2
C3            0   7     1     5    1      Coincidence 3
T4				  0   7     1     6    1      RHRS single trigger
Clock_LHRS    0   7     1     7    1      1024 Hz
L1A_remote    0   7     1     8    1      L1A remote signal to LHRS
Clock_RHRS    0   7     1     9    1
S2L           0   7     1     10   1
S2R	        0   7     1     11   1 
(S0||S2)R     0   7     1     12   1 
ADC_gate      0   7     1     13   1
RFtime        0   7     1     14   1   
L1A             0   7     1     15   1 
Cher-1          0   7     1    16    1      1st chan of cerenkov
Cher-2          0   7     1    17    1
Cher-3          0   7     1    18    1      Right HRS
Cher-4          0   7     1    19    1
Cher-5          0   7     1    20    1
Cher-6          0   7     1    21    1
Cher-7          0   7     1    22    1
Cher-8          0   7     1    23    1
Cher-9          0   7     1    24    1
Cher-10         0   7     1    25    1
Cher-Sum        0   7     1    26    1      Right HRS
S0-A            0   7     1    27    1      Right HRS
S0-B            0   7     1    28    1
S0A_and_S0B     0   7     1    29    1
L1A_Copy  	0   7     1    30    1      
S2L_and_S2R     0   7     1    31    1      empty

S2mL-1        0   7     2     0    1      S2m scintillator on R-HRS
S2mL-2        0   7     2     1    1      S2m scintillator on R-HRS
S2mL-3        0   7     2     2    1      S2m scintillator on R-HRS
S2mL-4        0   7     2     3    1      S2m scintillator on R-HRS
S2mL-5        0   7     2     4    1      S2m scintillator on R-HRS
S2mL-6        0   7     2     5    1      S2m scintillator on R-HRS
S2mL-7        0   7     2     6    1      S2m scintillator on R-HRS
S2mL-8        0   7     2     7    1      S2m scintillator on R-HRS
S2mL-9        0   7     2     8    1      S2m scintillator on R-HRS
S2mL-10       0   7     2     9    1      S2m scintillator on R-HRS
S2mL-11       0   7     2    10    1      S2m scintillator on R-HRS
S2mL-12       0   7     2    11    1      S2m scintillator on R-HRS
S2mL-13       0   7     2    12    1      S2m scintillator on R-HRS
S2mL-14       0   7     2    13    1      S2m scintillator on R-HRS
S2mL-15       0   7     2    14    1      S2m scintillator on R-HRS
S2mL-16       0   7     2    15    1      S2m scintillator on R-HRS

S2mR-1        0   7     2    16    1      S2m scintillator on R-HRS
S2mR-2        0   7     2    17    1      S2m scintillator on R-HRS
S2mR-3        0   7     2    18    1      S2m scintillator on R-HRS
S2mR-4        0   7     2    19    1      S2m scintillator on R-HRS
S2mR-5        0   7     2    20    1      S2m scintillator on R-HRS
S2mR-6        0   7     2    21    1      S2m scintillator on R-HRS
S2mR-7        0   7     2    22    1      S2m scintillator on R-HRS
S2mR-8        0   7     2    23    1      S2m scintillator on R-HRS
S2mR-9        0   7     2    24    1      S2m scintillator on R-HRS
S2mR-10       0   7     2    25    1      S2m scintillator on R-HRS
S2mR-11       0   7     2    26    1      S2m scintillator on R-HRS
S2mR-12       0   7     2    27    1      S2m scintillator on R-HRS
S2mR-13       0   7     2    28    1      S2m scintillator on R-HRS
S2mR-14       0   7     2    29    1      S2m scintillator on R-HRS
S2mR-15       0   7     2    30    1      S2m scintillator on R-HRS
S2mR-16       0   7     2    31    1      S2m scintillator on R-HRS


T1            0   7     3     0    1      LHRS single trigger
T2            0   7     3     1    1      LHRS single trigger
T3            0   7     3     2    1      LHRS single trigger
C1            0   7     3     3    1      Coincidence 1
C2            0   7     3     4    1      Coincidence 2
C3            0   7     3     5    1      Coincidence 3
T4            0   7     3     6    1      RHRS single trigger
Clock_LHRS    0   7     3     7    1      1024 Hz
L1A_remote    0   7     3     8    1      L1A remote signal to LHRS
Clock_RHRS    0   7     3     9    1
S2L           0   7     3     10   1
S2R           0   7     3     11   1
(S0||S2)R     0   7     3     12   1
ADC_gate      0   7     3     13   1
RFtime        0   7     3     14   1      Currently broken. Will was FastBus_remote or RF_Time.
L1A           0   7     3     15   1
unew          0   7     3     18    1
dnew          0   7     3     20    1
unser         0   7     3     22    1
u1            0   7     3     24    1
d1            0   7     3     26    1
d3            0   7     3     28    1
d10           0   7     3     30    1

# ------ December 5, 2017

DATE 5 12 2017

# Setup for Tritium series

# Helicity-gated scalers are two "virtual" slots derived from one scaler unit

# directives for Left HRS

xscaler-tabs Left 0:Empty 1:Norm 2:Empty 3:S2m 4:Trig-Cher-S0 5:Empty 6:Empty
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:4x4 6:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 
xscaler-pagename Left 0:'L-HRS LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS Normalization (it is not gated by helicity)'
xscaler-pagename Left 2:'L-HRS '
xscaler-pagename Left 3:'L-HRS S2m Left and Right (4th physical slot)'
xscaler-pagename Left 4:'L-HRS Triggers, Gas Cherenkov,and S0 (5th physical slot)'
xscaler-pagename Left 5:'L-HRS '
xscaler-pagename Left 6:'L-HRS '

xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:4 chan:7 rate:103700

#
# directives for Right HRS
xscaler-tabs Right 0:Empty 1:Trig-Cher-S0 2:S2m 3:Norm 4:empty 5:empty 6:empty
xscaler-layout Right 0:4x4 1:8x4 2:8x4 3:8x4 4:4x4 5:4x4 6:4x4
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6
xscaler-pagename Right 0:'LeCroy Scaler in 1st slot'
xscaler-pagename Right 1:'R-HRS Triggers, Gas Cherenkov, and s0'
xscaler-pagename Right 2:'R-HRS S2m Left and Right'
xscaler-pagename Right 3:'R-HRS Normalization'
xscaler-pagename Right 4:'BCMs Scalar in 5th slot'
xscaler-pagename Right 5:'Caen Scalar in 6th slot'
xscaler-pagename Right 6:'Caen Scalar in 7th slot'

xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:1 chan:9 rate:1024

# Left HRS:  
# Normalization scaler in software slot 3, which is hardware slot 2  
# (software 0=Lecroy, software [1,2] = helicity scaler sorted by helicity)

# desc        hel crate slot  start nchan  long-description
1               0   8     0     0     1      
2               0   8     0     1     1     
3               0   8     0     2     1      
4               0   8     0     3     1      
5               0   8     0     4     1      
6               0   8     0     5     1      
7               0   8     0     6     1      
8               0   8     0     7     1      
9               0   8     0     8     1      
10              0   8     0     9     1      
11              0   8     0     10    1      
12              0   8     0     11    1      
13              0   8     0     12    1      
14              0   8     0     13    1      
15              0   8     0     14    1      
16              0   8     0     15    1     

T1              0   8     1     0     1      Trigger 1   
T2              0   8     1     1     1      Trigger 2
T3              0   8     1     2     1      Trigger 3
ch4             0   8     1     3     1      
(S0||S2)R       0   8     1     4     1      EDTM S2 
L1A_Remote      0   8     1     5     1      L1A remote signal from RHRS
Clock_RHRS      0   8     1     6     1      
Clock_LHRS      0   8     1     7     1      
Sh-Sum          0   8     1     8     1    
(S0||S2)L       0   8     1     9     1
S2L             0   8     1     10    1      LHRS S2L signal
S2R             0   8     1     11    1      LHRS S2R signal
(S0||S2)R       0   8     1     12    1      Retiming signal from RHRS
ADC_gate        0   8     1     13    1      
L1A             0   8     1     14    1      LHRS L1A
RF_Time         0   8     1     15    1
L1A             0   8     1     16    1      L1A directly from TS2 output.
unew            0   8     1     18    1      
dnew            0   8     1     20    1      
unser           0   8     1     22    1      
u1              0   8     1     24    1      
d1              0   8     1     26    1      
d3              0   8     1     28    1      
d10             0   8     1     30    1      

1               0   8     2     0     1      
2               0   8     2     1     1      
3               0   8     2     2     1      
4               0   8     2     3     1      
5               0   8     2     4     1      
6               0   8     2     5     1      
7               0   8     2     6     1      
8               0   8     2     7     1      
9               0   8     2     8     1      
10              0   8     2     9     1      
11              0   8     2     10    1      
12              0   8     2     11    1      
13              0   8     2     12    1      
14              0   8     2     13    1     
15              0   8     2     14    1      
16              0   8     2     15    1      
17              0   8     2     16    1      
18              0   8     2     17    1      
19              0   8     2     18    1      
20              0   8     2     19    1      
21              0   8     2     20    1      
22              0   8     2     21    1      
23              0   8     2     22    1      
24              0   8     2     23    1      
25              0   8     2     24    1      
26              0   8     2     25    1      
27              0   8     2     26    1      
28              0   8     2     27    1      
29              0   8     2     28    1      
30              0   8     2     29    1      
31              0   8     2     30    1      
32              0   8     2     31    1      


S2mL-1          0   8     3     0     1
S2mL-2          0   8     3     1     1
S2mL-3          0   8     3     2     1
S2mL-4          0   8     3     3     1
S2mL-5          0   8     3     4     1
S2mL-6          0   8     3     5     1
S2mL-7          0   8     3     6     1
S2mL-8          0   8     3     7     1
S2mL-9          0   8     3     8     1
S2mL-10         0   8     3     9     1
S2mL-11         0   8     3     10    1
S2mL-12         0   8     3     11    1
S2mL-13         0   8     3     12    1
S2mL-14         0   8     3     13    1
S2mL-15         0   8     3     14    1
S2mL-16         0   8     3     15    1
S2mR-1          0   8     3     16    1
S2mR-2          0   8     3     17    1
S2mR-3          0   8     3     18    1
S2mR-4          0   8     3     19    1
S2mR-5          0   8     3     20    1
S2mR-6          0   8     3     21    1
S2mR-7          0   8     3     22    1
S2mR-8          0   8     3     23    1
S2mR-9          0   8     3     24    1
S2mR-10         0   8     3     25    1
S2mR-11         0   8     3     26    1
S2mR-12         0   8     3     27    1
S2mR-13         0   8     3     28    1
S2mR-14         0   8     3     29    1
S2mR-15         0   8     3     30    1
S2mR-16         0   8     3     31    1      

T1              0   8     4     0     1      Trigger 1
T2              0   8     4     1     1      Trigger 2
T3              0   8     4     2     1      Trigger 3
ch4             0   8     4     3     1
(S0||S2)R       0   8     4     4     1      EDTM S2
L1A_Remote      0   8     4     5     1      L1A remote signal from RHRS
Clock_RHRS      0   8     4     6     1
Clock_LHRS      0   8     4     7     1
Sh-Sum          0   8     4     8     1      
(S0||S2)L       0   8     4     9     1
S2L             0   8     4     10    1      LHRS S2L signal
S2R             0   8     4     11    1      LHRS S2R signal
(S0||S2)R       0   8     4     12    1      Retiming signal from RHRS
ADC_gate        0   8     4     13    1      
L1A             0   8     4     14    1      LHRS L1A
RF_Time         0   8     4     15    1
Cher-1          0   8     4     16    1
Cher-2          0   8     4     17    1
Cher-3          0   8     4     18    1
Cher-4          0   8     4     19    1
Cher-5          0   8     4     20    1
Cher-6          0   8     4     21    1
Cher-7          0   8     4     22    1
Cher-8          0   8     4     23    1
Cher-9          0   8     4     24    1
Cher-10         0   8     4     25    1
Cher-sum        0   8     4     26    1
S0-A            0   8     4     27    1
S0-B            0   8     4     28    1
S0A_and_S0B     0   8     4     29    1
L1A             0   8     4     30    1
S2L_and_S2R     0   8     4     31    1


1               0   8     5     0     1      
2               0   8     5     1     1      
3               0   8     5     2     1      
4               0   8     5     3     1      
5               0   8     5     4     1      
6               0   8     5     5     1      
7               0   8     5     6     1      
8               0   8     5     7     1      
9               0   8     5     8     1      
10              0   8     5     9     1      
11              0   8     5     10    1      
12              0   8     5     11    1      
13              0   8     5     12    1      
14              0   8     5     13    1     
15              0   8     5     14    1      
16              0   8     5     15    1      


1               0   8     6     0     1      
2               0   8     6     1     1      
3               0   8     6     2     1       
4               0   8     6     3     1      
5               0   8     6     4     1      
6               0   8     6     5     1      
7               0   8     6     6     1      
8               0   8     6     7     1      
9               0   8     6     8     1      
10              0   8     6     9     1      
11              0   8     6     10    1      
12              0   8     6     11    1      
13              0   8     6     12    1      
14              0   8     6     13    1     
15              0   8     6     14    1      
16              0   8     6     15    1      
17              0   8     6     16    1      
18              0   8     6     17    1      
19              0   8     6     18    1      
20              0   8     6     19    1      
21              0   8     6     20    1      
22              0   8     6     21    1      
23              0   8     6     22    1    
24              0   8     6     23    1      
25              0   8     6     24    1      
26              0   8     6     25    1      
27              0   8     6     26    1      
28              0   8     6     27    1      
29              0   8     6     28    1      
30              0   8     6     29    1      
31              0   8     6     30    1      
32              0   8     6     31    1 

 

# Right HRS   

T1            0   7     1     0    1      LHRS single trigger
T2            0   7     1     1    1      LHRS single trigger
T3            0   7     1     2    1      LHRS single trigger
T4            0   7     1     3    1      RHRS single trigger
T5            0   7     1     4    1      RHRS single trigger
T6            0   7     1     5    1      RHRS single trigger
Clock_RHRS    0   7     1     6    1      
Clock_LHRS    0   7     1     7    1      1024 Hz
L1A_remote    0   7     1     8    1      L1A remote signal to LHRS
Clock_RHRS    0   7     1     9    1
S2L           0   7     1     10   1
S2R	      0   7     1     11   1 
(S0||S2)R     0   7     1     12   1 
ADC_gate      0   7     1     13   1
FastBus_remote  0   7     1     14   1   
L1A             0   7     1     15   1 
Cher-1          0   7     1    16    1      1st chan of cerenkov
Cher-2          0   7     1    17    1
Cher-3          0   7     1    18    1      Right HRS
Cher-4          0   7     1    19    1
Cher-5          0   7     1    20    1
Cher-6          0   7     1    21    1
Cher-7          0   7     1    22    1
Cher-8          0   7     1    23    1
Cher-9          0   7     1    24    1
Cher-10         0   7     1    25    1
Cher-Sum        0   7     1    26    1      Right HRS
S0-A            0   7     1    27    1      Right HRS
S0-B            0   7     1    28    1
S0A_and_S0B     0   7     1    29    1
L1A_Copy  	0   7     1    30    1      
S2L_and_S2R     0   7     1    31    1      empty

S2mL-1        0   7     2     0    1      S2m scintillator on R-HRS
S2mL-2        0   7     2     1    1      S2m scintillator on R-HRS
S2mL-3        0   7     2     2    1      S2m scintillator on R-HRS
S2mL-4        0   7     2     3    1      S2m scintillator on R-HRS
S2mL-5        0   7     2     4    1      S2m scintillator on R-HRS
S2mL-6        0   7     2     5    1      S2m scintillator on R-HRS
S2mL-7        0   7     2     6    1      S2m scintillator on R-HRS
S2mL-8        0   7     2     7    1      S2m scintillator on R-HRS
S2mL-9        0   7     2     8    1      S2m scintillator on R-HRS
S2mL-10       0   7     2     9    1      S2m scintillator on R-HRS
S2mL-11       0   7     2    10    1      S2m scintillator on R-HRS
S2mL-12       0   7     2    11    1      S2m scintillator on R-HRS
S2mL-13       0   7     2    12    1      S2m scintillator on R-HRS
S2mL-14       0   7     2    13    1      S2m scintillator on R-HRS
S2mL-15       0   7     2    14    1      S2m scintillator on R-HRS
S2mL-16       0   7     2    15    1      S2m scintillator on R-HRS

S2mR-1        0   7     2    16    1      S2m scintillator on R-HRS
S2mR-2        0   7     2    17    1      S2m scintillator on R-HRS
S2mR-3        0   7     2    18    1      S2m scintillator on R-HRS
S2mR-4        0   7     2    19    1      S2m scintillator on R-HRS
S2mR-5        0   7     2    20    1      S2m scintillator on R-HRS
S2mR-6        0   7     2    21    1      S2m scintillator on R-HRS
S2mR-7        0   7     2    22    1      S2m scintillator on R-HRS
S2mR-8        0   7     2    23    1      S2m scintillator on R-HRS
S2mR-9        0   7     2    24    1      S2m scintillator on R-HRS
S2mR-10       0   7     2    25    1      S2m scintillator on R-HRS
S2mR-11       0   7     2    26    1      S2m scintillator on R-HRS
S2mR-12       0   7     2    27    1      S2m scintillator on R-HRS
S2mR-13       0   7     2    28    1      S2m scintillator on R-HRS
S2mR-14       0   7     2    29    1      S2m scintillator on R-HRS
S2mR-15       0   7     2    30    1      S2m scintillator on R-HRS
S2mR-16       0   7     2    31    1      S2m scintillator on R-HRS


T1            0   7     3     0    1      LHRS single trigger
T2            0   7     3     1    1      LHRS single trigger
T3            0   7     3     2    1      LHRS single trigger
T4            0   7     3     3    1      RHRS single trigger
T5            0   7     3     4    1      RHRS single trigger
T6            0   7     3     5    1      RHRS single trigger
Clock_RHRS    0   7     3     6    1
Clock_LHRS    0   7     3     7    1      1024 Hz
L1A_remote    0   7     3     8    1      L1A remote signal to LHRS
Clock_RHRS    0   7     3     9    1
S2L           0   7     3     10   1
S2R           0   7     3     11   1
(S0||S2)R     0   7     3     12   1
ADC_gate      0   7     3     13   1
Broken        0   7     3     14   1      Currently broken. Will was FastBus_remote or RF_Time.
L1A           0   7     3     15   1
unew          0   7     3     18    1
dnew          0   7     3     20    1
unser         0   7     3     22    1
u1            0   7     3     24    1
d1            0   7     3     26    1
d3            0   7     3     28    1
d10           0   7     3     30    1

# ------ Jan 20, 2014

DATE 20 1 2014

# Setup for GMp / DVCS

# Helicity-gated scalers are two "virtual" slots derived from one scaler unit

# directives for Left HRS

xscaler-tabs Left 0:LeCroy 1:nplus 2:nminus 3:Norm 4:S2m 5:Trig-Cher-S0 6:s1 7:misc
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7
xscaler-pagename Left 0:'L-HRS LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS Normalization Scaler sorted by helicity PLUS'
xscaler-pagename Left 2:'L-HRS Normalization Scaler sorted by helicity MINUS' 
xscaler-pagename Left 3:'L-HRS Normalization (it is not gated by helicity)'
xscaler-pagename Left 4:'L-HRS S2m Left and Right (4th physical slot)'
xscaler-pagename Left 5:'L-HRS Triggers, Gas Cherenkov,and S0 (5th physical slot)'
xscaler-pagename Left 6:'L-HRS S1 (6th physical slot)'
xscaler-pagename Left 7:'Miscellaneous (7th physical slot)'

xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:3 chan:7 rate:103700

crate-tied EvLeft 0:8 -1:8 1:8
slot-offset EvLeft 0:0 -1:-2 1:-1
slot-offset Left 0:0 -1:-1 1:-2 

#
# directives for Right HRS
xscaler-tabs Right 0:lecroy 1:Trig-Cher-S0 2:S2m 3:LeCroy_spare 4:bcms 5:other 6:other
xscaler-layout Right 0:4x4 1:8x4 2:8x4 3:4x4 4:4x4 5:4x4 6:4x4
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6
xscaler-pagename Right 0:'LeCroy Scaler in 1st slot'
xscaler-pagename Right 1:'R-HRS Triggers, Gas Cherenkov, and s0'
xscaler-pagename Right 2:'R-HRS S2m Left and Right'
xscaler-pagename Right 3:'Lecroy Scalar in 4th slot'
xscaler-pagename Right 4:'BCMs Scalar in 5th slot'
xscaler-pagename Right 5:'Caen Scalar in 6th slot'
xscaler-pagename Right 6:'Caen Scalar in 7th slot'

xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:1 chan:7 rate:1024

#crate-tied EvRight 0:7 -1:7 1:7
#slot-offset EvRight 0:0 -1:-2 1:-1
#slot-offset Right 0:0 -1:-1 1:-2


# Left HRS:  
# Normalization scaler in software slot 3, which is hardware slot 2  
# (software 0=Lecroy, software [1,2] = helicity scaler sorted by helicity)

# desc        hel crate slot start nchan  long-description
T1            0   8     3     0    1      trigger 1 on Left Arm
T2            0   8     3     1    1      trigger 2 on Left Arm
T3            0   8     3     2    1      trigger 3 on Left Arm
T4            0   8     3     3    1      trigger 4 on Left Arm
T5            0   8     3     4    1      trigger 5 on Left Arm
T6            0   8     3     5    1      trigger 6 on Left Arm
T7            0   8     3     6    1      trigger 7 on Left Arm
trigger-1     0   8     3     0    1      trigger 1 on Left Arm
trigger-2     0   8     3     1    1      trigger 2 on Left Arm
trigger-3     0   8     3     2    1      trigger 3 on Left Arm
trigger-4     0   8     3     3    1      trigger 4 on Left Arm
trigger-5     0   8     3     4    1      trigger 5 on Left Arm
trigger-6     0   8     3     5    1      trigger 6 on Left Arm
trigger-7     0   8     3     6    1      trigger 7 on Left Arm
T8-Clock      0   8     3     7    1      103700 Hz pulser trigger 8
unser         0   8     3     8    1      Unser
bcm_ux1       0   8     3     9    1      bcm up x1
bcm_dx1       0   8     3     10   1      bcm down x1
bcm_dx3       0   8     3     11   1      bcm down x3
bcm_dx10      0   8     3     12   1      bcm down x10
#T1_copy      0   8     3     13   1      A copy of T1
EDTM          0   8     3     13   1      EDTM pulse
#L1-accept    0   8     3     14   1      L1A
#TDC_gate     0   8     3     15   1      TDC gate
L1A_copy1     0   8     3     14   1      First copy of L1A
L1A_copy2     0   8     3     15   1      Second copy of L1A

#new_bcm_up    0   8     3     17   1      bcm up x1
#new_bcm_down  0   8     3     18   1      bcm down x1

clock         0   8     3     7    1      clock
TS-accept     0   8     3     14   1      Trigger Supervisor accepted triggers

ClockAgain    0   8     3     31   1      Redundant clock


S2mL-1        0   8     4     0    1
S2mL-2        0   8     4     1    1
S2mL-3        0   8     4     2    1
S2mL-4        0   8     4     3    1
S2mL-5        0   8     4     4    1
S2mL-6        0   8     4     5    1
S2mL-7        0   8     4     6    1
S2mL-8        0   8     4     7    1
S2mL-9        0   8     4     8    1
S2mL-10       0   8     4     9    1
S2mL-11       0   8     4    10    1
S2mL-12       0   8     4    11    1      Left HRS
S2mL-13       0   8     4    12    1
S2mL-14       0   8     4    13    1
S2mL-15       0   8     4    14    1
S2mL-16       0   8     4    15    1

S2mR-1        0   8     4    16    1
S2mR-2        0   8     4    17    1
S2mR-3        0   8     4    18    1
S2mR-4        0   8     4    19    1
S2mR-5        0   8     4    20    1
S2mR-6        0   8     4    21    1
S2mR-7        0   8     4    22    1
S2mR-8        0   8     4    23    1
S2mR-9        0   8     4    24    1
S2mR-10       0   8     4    25    1
S2mR-11       0   8     4    26    1
S2mR-12       0   8     4    27    1
S2mR-13       0   8     4    28    1
S2mR-14       0   8     4    29    1
S2mR-15       0   8     4    30    1
S2mR-16       0   8     4    31    1      

Cher-1        0   8     5    16    1      1st chan of Cher left
Cher-2        0   8     5    17    1
Cher-3        0   8     5    18    1
Cher-4        0   8     5    19    1
Cher-5        0   8     5    20    1
Cher-6        0   8     5    21    1
Cher-7        0   8     5    22    1
Cher-8        0   8     5    23    1
Cher-9        0   8     5    24    1
Cher-10       0   8     5    25    1
Cher-Sum      0   8     5    26    1
S0-A          0   8     5    27    1
S0-B          0   8     5    28    1
S0-Coin       0   8     5    29    1
Sh-Sum	      0   8     5    30    1
Empty	      0   8     5    31    1

T1            0   8     5    0    1      
T2            0   8     5    1    1
T3            0   8     5    2    1
T4            0   8     5    3    1
T5            0   8     5    4    1
T6            0   8     5    5    1
T7            0   8     5    6    1
T8-Clock      0   8     5    7    1
unser	      0   8     5    8    1 
bcm_ux1	      0   8     5    9    1
bcm_dx1	      0   8     5    10   1 
bcm_dx3	      0   8     5    11   1 
bcm_dx10      0   8     5    12   1 
#T1_copy      0   8     5    13   1
EDTM          0   8     5    13   1
#L1-accept    0   8     5    14   1 
#TDC_gate     0   8     5    15   1
L1A_copy1     0   8     5    14   1       First copy of L1A
L1A_copy2     0   8     5    15   1       Second copy of L1A


#Added by L Myers for new BCM receiver  10-28-2014
new_bcm_up	   0   8     7    6    1
new_bcm_down	   0   8     7    7    1 
#Added by P.King for DVCS trigger crate signals, 2014-11-11
DVCS_stop        0   8     7    24   1 
DVCS_masterOR    0   8     7    25   1 
DVCS_valid       0   8     7    26   1 
512ns_clk        0   8     7    28   1 

 

# Right HRS   

T1            0   7     1     0    1      trigger 1 on Right Arm
T2            0   7     1     1    1      trigger 2 on Right Arm
T3            0   7     1     2    1      trigger 3 on Right Arm
T4            0   7     1     3    1      trigger 4 on Right Arm
T5            0   7     1     4    1      trigger 5 on Right Arm
T6            0   7     1     5    1      trigger 6 on Right Arm
T7            0   7     1     6    1      trigger 7 on Right Arm
T8-Clock      0   7     1     7    1      trigger 8 on Right Arm
Downx1-Copy   0   7     1     8    1 
Fast-Clock    0   7     1     9    1
TDC-gate      0   7     1     10   1
Empty	      0   7     1     11   1 
L1-Accept     0   7     1     12   1 
L1A-copy      0   7     1     13   1
#TDC-Gate     0   7     1     13   1
Empty	      0   7     1     14   1 
Empty	      0   7     1     15   1

#CerSum        0   7     1     8    1      Right HRS GC Sum
#FastClock     0   7     1     9    1      103.8 kHz clock
#EDTM          0   7     1    10    1      EDTM Signal
#ADC_gate      0   7     1    11    1      ADC Gate from TM
#R_Strobe      0   7     1    12    1      Strobe/Retiming (from right arm)
#ADC-gate       0   7     1    13    1      ADC gate
#L1-accept      0   7     1    14    1      L1 accept
#TDC-gate       0   7     1    15    1      TDC gate

clock         0   7     1     9    1      103.8 kHz clock
#clock         0   7     1     7    1      1024 Hz clock
TS-accept     0   7     1    14    1      Level 1 Accept
#TS-accept     0   7     1    12    1      Level 1 Accept
#hel           0   7     1    18    1      Beam current, upstream cavity, gain = 3
#bcm_up        0   7     1    19    1      Beam current, upstream cavity, gain = 1
#bcm_down      0   7     1    20    1      Beam current, downstream cavity, gain = 1

Cher-1          0   7     1    16    1      1st chan of cerenkov
Cher-2          0   7     1    17    1
Cher-3          0   7     1    18    1      Right HRS
Cher-4          0   7     1    19    1
Cher-5          0   7     1    20    1
Cher-6          0   7     1    21    1
Cher-7          0   7     1    22    1
Cher-8          0   7     1    23    1
Cher-9          0   7     1    24    1
Cher-10         0   7     1    25    1
Cher-Sum        0   7     1    26    1      Right HRS
S0-A            0   7     1    27    1      Right HRS
S0-B            0   7     1    28    1
S0-Coin         0   7     1    29    1
Sh-Sum  	0   7     1    30    1      empty
Empty           0   7     1    31    1      empty

#Lumi-1        0   7     1    24    1      DVCS Lumi-1
#Lumi-2        0   7     1    25    1      DVCS Lumi-2
#Lumi-3        0   7     1    26    1      DVCS Lumi-3
#Lumi-4        0   7     1    27    1      DVCS Lumi-4
#Lumi-5        0   7     1    28    1      DVCS Lumi-5
#Lumi-6        0   7     1    29    1      DVCS Lumi-6
#Lumi-7        0   7     1    30    1      DVCS Lumi-7
#Lumi-8        0   7     1    31    1      DVCS Lumi-8

S2mL-1        0   7     2     0    1      S2m scintillator on R-HRS
S2mL-2        0   7     2     1    1      S2m scintillator on R-HRS
S2mL-3        0   7     2     2    1      S2m scintillator on R-HRS
S2mL-4        0   7     2     3    1      S2m scintillator on R-HRS
S2mL-5        0   7     2     4    1      S2m scintillator on R-HRS
S2mL-6        0   7     2     5    1      S2m scintillator on R-HRS
S2mL-7        0   7     2     6    1      S2m scintillator on R-HRS
S2mL-8        0   7     2     7    1      S2m scintillator on R-HRS
S2mL-9        0   7     2     8    1      S2m scintillator on R-HRS
S2mL-10       0   7     2     9    1      S2m scintillator on R-HRS
S2mL-11       0   7     2    10    1      S2m scintillator on R-HRS
S2mL-12       0   7     2    11    1      S2m scintillator on R-HRS
S2mL-13       0   7     2    12    1      S2m scintillator on R-HRS
S2mL-14       0   7     2    13    1      S2m scintillator on R-HRS
S2mL-15       0   7     2    14    1      S2m scintillator on R-HRS
S2mL-16       0   7     2    15    1      S2m scintillator on R-HRS

S2mR-1        0   7     2    16    1      S2m scintillator on R-HRS
S2mR-2        0   7     2    17    1      S2m scintillator on R-HRS
S2mR-3        0   7     2    18    1      S2m scintillator on R-HRS
S2mR-4        0   7     2    19    1      S2m scintillator on R-HRS
S2mR-5        0   7     2    20    1      S2m scintillator on R-HRS
S2mR-6        0   7     2    21    1      S2m scintillator on R-HRS
S2mR-7        0   7     2    22    1      S2m scintillator on R-HRS
S2mR-8        0   7     2    23    1      S2m scintillator on R-HRS
S2mR-9        0   7     2    24    1      S2m scintillator on R-HRS
S2mR-10       0   7     2    25    1      S2m scintillator on R-HRS
S2mR-11       0   7     2    26    1      S2m scintillator on R-HRS
S2mR-12       0   7     2    27    1      S2m scintillator on R-HRS
S2mR-13       0   7     2    28    1      S2m scintillator on R-HRS
S2mR-14       0   7     2    29    1      S2m scintillator on R-HRS
S2mR-15       0   7     2    30    1      S2m scintillator on R-HRS
S2mR-16       0   7     2    31    1      S2m scintillator on R-HRS

new_bcm-Up      0   7     4    9     1
new_bcm-Down    0   7     4    10    1
Unser           0   7     4    11    1
Upx1            0   7     4    12    1
Downx1          0   7     4    13    1
Downx3          0   7     4    14    1
Downx10         0   7     4    15    1


#S1L-1         0   7     3     0    1      S1 scintillator on R-HRS
#S1L-2         0   7     3     1    1      S1 scintillator on R-HRS
#S1L-3         0   7     3     2    1      S1 scintillator on R-HRS
#S1L-4         0   7     3     3    1      S1 scintillator on R-HRS
#S1L-5         0   7     3     4    1      S1 scintillator on R-HRS
#S1L-6         0   7     3     5    1      S1 scintillator on R-HRS
#blank	       0   7     3     6    1      empty
#blank         0   7     3     7    1      empty
#S1R-1         0   7     3     8    1      S1 scintillator on R-HRS
#S1R-2         0   7     3     9    1      S1 scintillator on R-HRS
#S1R-3         0   7     3    10    1      S1 scintillator on R-HRS
#S1R-4         0   7     3    11    1      S1 scintillator on R-HRS
#S1R-5         0   7     3    12    1      S1 scintillator on R-HRS
#S1R-6         0   7     3    13    1      S1 scintillator on R-HRS
#blank	       0   7     3    14    1      empty
#blank         0   7     3    15    1      empty

# ------ Oct 04, 2011

DATE 4 10 2011

# Setup for SRC

# Helicity-gated scalers are two "virtual" slots derived from 2nd (physical) scaler from left.

# directives for Left HRS

xscaler-tabs Left 0:LeCroy 1:nplus 2:nminus 3:Norm 4:s1 5:s2 6:Cer 7:spare 
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7
xscaler-pagename Left 0:'L-HRS LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS Normalization Scaler gated by helicity PLUS'
xscaler-pagename Left 2:'L-HRS Normalization Scaler gated by helicity MINUS'
xscaler-pagename Left 3:'L-HRS Normalization   (NOT gated by hel)'
xscaler-pagename Left 4:'S1 and so on (5th slot)'
xscaler-pagename Left 5:'S2 left and Right (6th slot)'
xscaler-pagename Left 6:'Cerenkov (7th slot)'
xscaler-pagename Left 7:'Slot 7 (8th slot)'

xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:7 chan:31 rate:103700

crate-tied EvLeft 0:8 -1:8 1:8
slot-offset EvLeft 0:0 -1:-2 1:-1
slot-offset Left 0:0 -1:-1 1:-2 

#
# directives for Right HRS
xscaler-tabs Right 0:nplus 1:nminus 2:norm 3:s1 4:s2mR 5:s2mL 6:Cer
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:4x4 4:4x4 5:4x4 6:4x4
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6
xscaler-pagename Right 0:'R-HRS Normalization Scaler gated by helicity PLUS'
xscaler-pagename Right 1:'R-HRS Normalization Scaler gated by helicity MINUS'
xscaler-pagename Right 2:'R-HRS Normalization (NOT gated by hel)'
xscaler-pagename Right 3:'R-HRS S1'
xscaler-pagename Right 4:'R-HRS S2m RIGHT'
xscaler-pagename Right 5:'R-HRS S2m LEFT'
xscaler-pagename Right 6:'R-HRS Cerenkov'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:2 chan:7 rate:1024

crate-tied EvRight 0:7 -1:7 1:7
slot-offset EvRight 0:0 -1:-2 1:-1
slot-offset Right 0:0 -1:-1 1:-2


# Left HRS:  
# desc        hel crate slot start nchan  long-description
T1            0   8     3     0    1      trigger 1 on Left Arm
T2            0   8     3     1    1      trigger 2 on Left Arm
T3            0   8     3     2    1      trigger 3 on Left Arm
T4            0   8     3     3    1      trigger 4 on Left Arm
T5            0   8     3     4    1      trigger 5 on Left Arm
T6            0   8     3     5    1      trigger 6 on Left Arm
T7            0   8     3     6    1      trigger 7 on Left Arm
trigger-1     0   8     3     0    1      trigger 1 on Left Arm
trigger-2     0   8     3     1    1      trigger 2 on Left Arm
trigger-3     0   8     3     2    1      trigger 3 on Left Arm
trigger-4     0   8     3     3    1      trigger 4 on Left Arm
trigger-5     0   8     3     4    1      trigger 5 on Left Arm
trigger-6     0   8     3     5    1      trigger 6 on Left Arm
trigger-7     0   8     3     6    1      trigger 7 on Left Arm
T8-Clock      0   8     3     7    1      1024 Hz pulser trigger 8
R_Strobe      0   8     3     8    1      Strobe from Right Arm
FastClock     0   8     3     9    1      103.8 kHz clock
EDTM          0   8     3    10    1      EDTM Signal
ADC_gate      0   8     3    11    1      ADC Gate from TM
L1A           0   8     3    12    1      Level 1 Accept
L_Strobe      0   8     3    13    1      Strobe/Retiming (from left arm)
S1            0   8     3    14    1      S1 L&R ORed
S2            0   8     3    15    1      S2 L&R ORed

clock         0   8     3     7    1      clock
TS-accept     0   8     3    12    1      Trigger Supervisor accepted triggers

bcm_up        0   8     3    16    1      Beam current, upstream cavity
bcm_dn        0   8     3    17    1      Beam current, downstream cavity
hel           0   8     3    18    1      Beam current, upstream cavity, gain = 1
bcm_d10       0   8     3    19    1      Beam current, downstream cavity, gain = 10
bcm_d3        0   8     3    20    1      Beam current, downstream cavity, gain = 3
bcm_d1        0   8     3    21    1      Beam current, downstream cavity, gain = 1
empty         0   8     3    22    1      Left HRS

empty         0   8     3    25    1   
empty         0   8     3    26    1   
empty         0   8     3    27    1
empty         0   8     3    28    1   
empty         0   8     3    28    1   
QRT           0   8     3    29    1   
HELIC         0   8     3    30    1   
LNE           0   8     3    31    1      load next event which loads scaler

S1L-1         0   8     4     0    1
S1L-2         0   8     4     1    1
S1L-3         0   8     4     2    1
S1L-4         0   8     4     3    1
S1L-5         0   8     4     4    1
S1L-6         0   8     4     5    1
blank         0   8     4     6    1
blank         0   8     4     7    1
S1R-1         0   8     4     8    1
S1R-2         0   8     4     9    1
S1R-3         0   8     4    10    1
S1R-4         0   8     4    11    1      Left HRS
S1R-5         0   8     4    12    1
S1R-6         0   8     4    13    1
blank         0   8     4    14    1
blank         0   8     4    15    1

chan-16       0   8     4    16    1
chan-17       0   8     4    17    1
chan-18       0   8     4    18    1
chan-19       0   8     4    19    1
chan-20       0   8     4    20    1
chan-21       0   8     4    21    1
chan-22       0   8     4    22    1
chan-23       0   8     4    23    1
chan-24       0   8     4    24    1
chan-25       0   8     4    25    1
chan-26       0   8     4    26    1
chan-27       0   8     4    27    1
chan-28       0   8     4    28    1
chan-29       0   8     4    29    1
chan-30       0   8     4    30    1
clk104K       0   8     4    31    1      103.7 kHz clock  

S2L-1         0   8     5     0    1      1st chan of S2  left
S2L-2         0   8     5     1    1
S2L-3         0   8     5     2    1
S2L-4         0   8     5     3    1
S2L-5         0   8     5     4    1
S2L-6         0   8     5     5    1
S2L-7         0   8     5     6    1
S2L-8         0   8     5     7    1
S2L-9         0   8     5     8    1
S2L-10        0   8     5     9    1
S2L-11        0   8     5    10    1
S2L-12        0   8     5    11    1
S2L-13        0   8     5    12    1
S2L-14        0   8     5    13    1
S2L-15        0   8     5    14    1
S2L-16        0   8     5    15    1

S2R-1         0   8     5    16    1      1st chan of S2  right
S2R-2         0   8     5    17    1
S2R-3         0   8     5    18    1
S2R-4         0   8     5    19    1
S2R-5         0   8     5    20    1
S2R-6         0   8     5    21    1
S2R-7         0   8     5    22    1
S2R-8         0   8     5    23    1
S2R-9         0   8     5    24    1
S2R-10        0   8     5    25    1
S2R-11        0   8     5    26    1
S2R-12        0   8     5    27    1
S2R-13        0   8     5    28    1
S2R-14        0   8     5    29    1
S2R-15        0   8     5    30    1
S2R-16        0   8     5    31    1

Cer0          0   8     6     0    1      1st chan of cerenkov
Cer1          0   8     6     1    1
Cer2          0   8     6     2    1      Left HRS
Cer3          0   8     6     3    1
Cer4          0   8     6     4    1
Cer5          0   8     6     5    1
Cer6          0   8     6     6    1
Cer7          0   8     6     7    1
Cer8          0   8     6     8    1
Cer9          0   8     6     9    1
CSum          0   8     6    10    1      Left HRS
S0A           0   8     6    12    1      Left HRS
S0B           0   8     6    13    1
blank         0   8     6    14    1      Slot Bad
S0AND         0   8     6    15    1

# Right HRS 
# R-HRS scalers really used by DVCS, but they will exist.
T1            0   7     2     0    1      trigger 1 on Right Arm
T2            0   7     2     1    1      trigger 2 on Right Arm
T3            0   7     2     2    1      trigger 3 on Right Arm
T4            0   7     2     3    1      trigger 4 on Right Arm
T5            0   7     2     4    1      trigger 5 on Right Arm
T6            0   7     2     5    1      trigger 6 on Right Arm
T7            0   7     2     6    1      trigger 7 on Right Arm
T8            0   7     2     7    1      trigger 8 on Right Arm
# trigger-1    0   7     2     0    1      trigger 1 on Right Arm
# trigger-2    0   7     2     1    1      trigger 2 on Right Arm
# trigger-3    0   7     2     2    1      trigger 3 on Right Arm
# trigger-4    0   7     2     3    1      trigger 4 on Right Arm
# trigger-5    0   7     2     4    1      trigger 5 on Right Arm
# trigger-6    0   7     2     5    1      trigger 6 on Right Arm
# trigger-7    0   7     2     6    1      trigger 7 on Right Arm
# trigger-8    0   7     2     7    1      1024 Hz clock (T8)
CerSum        0   7     2     8    1      Right HRS GC Sum
FastClock     0   7     2     9    1      103.8 kHz clock
EDTM          0   7     2    10    1      EDTM Signal
ADC_gate      0   7     2    11    1      ADC Gate from TM
L1A           0   7     2    12    1      Level 1 Accept
R_Strobe      0   7     2    13    1      Strobe/Retiming (from right arm)
S1            0   7     2    14    1      S1 L&R ORed
S2            0   7     2    15    1      S2 L&R ORed

clock         0   7     2     7    1      1024 Hz clock (T8)
TS-accept     0   7     2    12    1      Level 1 Accept

hel           0   7     2    18    1      Beam current, upstream cavity, gain = 3
bcm_up        0   7     2    19    1      Beam current, upstream cavity, gain = 1
bcm_down      0   7     2    20    1      Beam current, downstream cavity, gain = 1

Lumi-1        0   7     2    24    1      DVCS Lumi-1
Lumi-2        0   7     2    25    1      DVCS Lumi-2
Lumi-3        0   7     2    26    1      DVCS Lumi-3
Lumi-4        0   7     2    27    1      DVCS Lumi-4
Lumi-5        0   7     2    28    1      DVCS Lumi-5
Lumi-6        0   7     2    29    1      DVCS Lumi-6
Lumi-7        0   7     2    30    1      DVCS Lumi-7
Lumi-8        0   7     2    31    1      DVCS Lumi-8

S2mL-1        0   7     5     0    1      S2m scintillator on R-HRS
S2mL-2        0   7     5     1    1      S2m scintillator on R-HRS
S2mL-3        0   7     5     2    1      S2m scintillator on R-HRS
S2mL-4        0   7     5     3    1      S2m scintillator on R-HRS
S2mL-5        0   7     5     4    1      S2m scintillator on R-HRS
S2mL-6        0   7     5     5    1      S2m scintillator on R-HRS
S2mL-7        0   7     5     6    1      S2m scintillator on R-HRS
S2mL-8        0   7     5     7    1      S2m scintillator on R-HRS
S2mL-9        0   7     5     8    1      S2m scintillator on R-HRS
S2mL-10       0   7     5     9    1      S2m scintillator on R-HRS
S2mL-11       0   7     5    10    1      S2m scintillator on R-HRS
S2mL-12       0   7     5    11    1      S2m scintillator on R-HRS
S2mL-13       0   7     5    12    1      S2m scintillator on R-HRS
S2mL-14       0   7     5    13    1      S2m scintillator on R-HRS
S2mL-15       0   7     5    14    1      S2m scintillator on R-HRS
S2mL-16       0   7     5    15    1      S2m scintillator on R-HRS

S2mR-1        0   7     4     0    1      S2m scintillator on R-HRS
S2mR-2        0   7     4     1    1      S2m scintillator on R-HRS
S2mR-3        0   7     4     2    1      S2m scintillator on R-HRS
S2mR-4        0   7     4     3    1      S2m scintillator on R-HRS
S2mR-5        0   7     4     4    1      S2m scintillator on R-HRS
S2mR-6        0   7     4     5    1      S2m scintillator on R-HRS
S2mR-7        0   7     4     6    1      S2m scintillator on R-HRS
S2mR-8        0   7     4     7    1      S2m scintillator on R-HRS
S2mR-9        0   7     4     8    1      S2m scintillator on R-HRS
S2mR-10       0   7     4     9    1      S2m scintillator on R-HRS
S2mR-11       0   7     4    10    1      S2m scintillator on R-HRS
S2mR-12       0   7     4    11    1      S2m scintillator on R-HRS
S2mR-13       0   7     4    12    1      S2m scintillator on R-HRS
S2mR-14       0   7     4    13    1      S2m scintillator on R-HRS
S2mR-15       0   7     4    14    1      S2m scintillator on R-HRS
S2mR-16       0   7     4    15    1      S2m scintillator on R-HRS

S1L-1         0   7     3     0    1      S1 scintillator on R-HRS
S1L-2         0   7     3     1    1      S1 scintillator on R-HRS
S1L-3         0   7     3     2    1      S1 scintillator on R-HRS
S1L-4         0   7     3     3    1      S1 scintillator on R-HRS
S1L-5         0   7     3     4    1      S1 scintillator on R-HRS
S1L-6         0   7     3     5    1      S1 scintillator on R-HRS
blank	      0   7     3     6    1      empty
blank         0   7     3     7    1      empty
S1R-1         0   7     3     8    1      S1 scintillator on R-HRS
S1R-2         0   7     3     9    1      S1 scintillator on R-HRS
S1R-3         0   7     3    10    1      S1 scintillator on R-HRS
S1R-4         0   7     3    11    1      S1 scintillator on R-HRS
S1R-5         0   7     3    12    1      S1 scintillator on R-HRS
S1R-6         0   7     3    13    1      S1 scintillator on R-HRS
blank	      0   7     3    14    1      empty
blank         0   7     3    15    1      empty

Cer1          0   7     6     0    1      1st chan of cerenkov
Cer2          0   7     6     1    1
Cer3          0   7     6     2    1      Right HRS
Cer4          0   7     6     3    1
Cer5          0   7     6     4    1
Cer6          0   7     6     5    1
Cer7          0   7     6     6    1
Cer8          0   7     6     7    1
Cer9          0   7     6     8    1
Cer10         0   7     6     9    1
CerSum        0   7     6    10    1      Right HRS

S0A           0   7     6    12    1      Right HRS
S0B           0   7     6    13    1
S0AND         0   7     6    14    1


# ------ Jan 31, 2011

DATE 31 1 2011

# Setup for SRC

# Helicity-gated scalers are two "virtual" slots derived from 2nd (physical) scaler from left.

# directives for Left HRS

xscaler-tabs Left 0:LeCroy 1:nplus 2:nminus 3:Norm 4:s1 5:s2 6:Cer 7:spare 
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7
xscaler-pagename Left 0:'L-HRS LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Left 3:'L-HRS Normalization   (NOT gated by hel)'
xscaler-pagename Left 4:'S1 and so on (5th slot)'
xscaler-pagename Left 5:'S2 left and Right (6th slot)'
xscaler-pagename Left 6:'Cerenkov and S0 (7th slot)'
xscaler-pagename Left 7:'Slot 7 (8th slot)'

xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:4 chan:31 rate:103700

crate-tied EvLeft 0:8 -1:8 1:8
slot-offset EvLeft 0:0 -1:-2 1:-1
slot-offset Left 0:0 -1:-2 1:-1 

#
# directives for Right HRS

xscaler-tabs Right 0:norm 1:s2ml,lumin 2:Bad 3:s2mR 4:s1 5:Gas Cer 6:Spare
xscaler-layout Right 0:8x4 1:8x4 2:4x4 3:4x4 4:4x4 5:4x4 6:4x4
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6
xscaler-pagename Right 0:'Triggers and R-HRS Normalization Scaler'
xscaler-pagename Right 1:'R-HRS S2m Left/Luminosity'
xscaler-pagename Right 2:'BAD'
xscaler-pagename Right 3:'R-HRS S2m Right'
xscaler-pagename Right 4:'R-HRS S1'
xscaler-pagename Right 5:'R-HRS Cerenkov and S0'
xscaler-pagename Right 6:'R-HRS Spare CAEN Scaler'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:0 chan:7 rate:1024


# Left HRS:  
# desc        hel crate slot start nchan  long-description
T1            0   8     3     0    1      trigger 1 on Left Arm
T2            0   8     3     1    1      trigger 2 on Left Arm
T3            0   8     3     2    1      trigger 3 on Left Arm
T4            0   8     3     3    1      trigger 4 on Left Arm
T5            0   8     3     4    1      trigger 5 on Left Arm
T6            0   8     3     5    1      trigger 6 on Left Arm
T7            0   8     3     6    1      trigger 7 on Left Arm
trigger-1            0   8     3     0    1      trigger 1 on Left Arm
trigger-2            0   8     3     1    1      trigger 2 on Left Arm
trigger-3            0   8     3     2    1      trigger 3 on Left Arm
trigger-4            0   8     3     3    1      trigger 4 on Left Arm
trigger-5            0   8     3     4    1      trigger 5 on Left Arm
trigger-6            0   8     3     5    1      trigger 6 on Left Arm
trigger-7            0   8     3     6    1      trigger 7 on Left Arm
T8-Clock      0   8     3     7    1      1024 Hz pulser trigger 8
R_Strobe      0   8     3     8    1      Strobe from Right Arm
FastClock     0   8     3     9    1      103.8 kHz clock
EDTM          0   8     3    10    1      EDTM Signal
ADC_gate      0   8     3    11    1      ADC Gate from TM
L1A           0   8     3    12    1      Level 1 Accept
L_Strobe      0   8     3    13    1      Strobe/Retiming (from left arm)
S1            0   8     3    14    1      S1 L&R ORed
S2            0   8     3    15    1      S2 L&R ORed

clock         0   8     3     7    1      clock
TS-accept     0   8     3    12    1      Trigger Supervisor accepted triggers

bcm_u10       0   8     3    16    1      Beam current, upstream cavity, gain = 10
bcm_u3        0   8     3    17    1      Beam current, upstream cavity, gain = 3
bcm_u1        0   8     3    18    1      Beam current, upstream cavity, gain = 1
bcm_d10       0   8     3    19    1      Beam current, downstream cavity, gain = 10
bcm_d3        0   8     3    20    1      Beam current, downstream cavity, gain = 3
bcm_d1        0   8     3    21    1      Beam current, downstream cavity, gain = 1
empty         0   8     3    22    1      Left HRS

empty         0   8     3    25    1   
empty         0   8     3    26    1   
empty         0   8     3    27    1
empty         0   8     3    28    1   
empty         0   8     3    28    1   
QRT           0   8     3    29    1   
HELIC         0   8     3    30    1   
LNE           0   8     3    31    1      load next event which loads scaler

S1L-1         0   8     4     0    1
S1L-2         0   8     4     1    1
S1L-3         0   8     4     2    1
S1L-4         0   8     4     3    1
S1L-5         0   8     4     4    1
S1L-6         0   8     4     5    1
blank         0   8     4     6    1
blank         0   8     4     7    1
S1R-1         0   8     4     8    1
S1R-2         0   8     4     9    1
S1R-3         0   8     4    10    1
S1R-4         0   8     4    11    1      Left HRS
S1R-5         0   8     4    12    1
S1R-6         0   8     4    13    1
blank         0   8     4    14    1
blank         0   8     4    15    1

chan-16       0   8     4    16    1
chan-17       0   8     4    17    1
chan-18       0   8     4    18    1
chan-19       0   8     4    19    1
chan-20       0   8     4    20    1
chan-21       0   8     4    21    1
chan-22       0   8     4    22    1
chan-23       0   8     4    23    1
chan-24       0   8     4    24    1
chan-25       0   8     4    25    1
chan-26       0   8     4    26    1
chan-27       0   8     4    27    1
chan-28       0   8     4    28    1
chan-29       0   8     4    29    1
chan-30       0   8     4    30    1
clk104K       0   8     4    31    1      103.7 kHz clock  

S2L-1         0   8     5     0    1      1st chan of S2  left
S2L-2         0   8     5     1    1
S2L-3         0   8     5     2    1
S2L-4         0   8     5     3    1
S2L-5         0   8     5     4    1
S2L-6         0   8     5     5    1
S2L-7         0   8     5     6    1
S2L-8         0   8     5     7    1
S2L-9         0   8     5     8    1
S2L-10        0   8     5     9    1
S2L-11        0   8     5    10    1
S2L-12        0   8     5    11    1
S2L-13        0   8     5    12    1
S2L-14        0   8     5    13    1
S2L-15        0   8     5    14    1
S2L-16        0   8     5    15    1

S2R-1         0   8     5    16    1      1st chan of S2  right
S2R-2         0   8     5    17    1
S2R-3         0   8     5    18    1
S2R-4         0   8     5    19    1
S2R-5         0   8     5    20    1
S2R-6         0   8     5    21    1
S2R-7         0   8     5    22    1
S2R-8         0   8     5    23    1
S2R-9         0   8     5    24    1
S2R-10        0   8     5    25    1
S2R-11        0   8     5    26    1
S2R-12        0   8     5    27    1
S2R-13        0   8     5    28    1
S2R-14        0   8     5    29    1
S2R-15        0   8     5    30    1
S2R-16        0   8     5    31    1

Cer0          0   8     6     0    1      1st chan of cerenkov
Cer1          0   8     6     1    1
Cer2          0   8     6     2    1      Left HRS
Cer3          0   8     6     3    1
Cer4          0   8     6     4    1
Cer5          0   8     6     5    1
Cer6          0   8     6     6    1
Cer7          0   8     6     7    1
Cer8          0   8     6     8    1
Cer9          0   8     6     9    1
CSum          0   8     6    10    1      Left HRS
S0A           0   8     6    12    1      Left HRS
S0B           0   8     6    13    1
blank         0   8     6    14    1      Slot Bad
S0AND         0   8     6    15    1

# Right HRS 
# R-HRS scalers really used by DVCS, but they will exist.
T1            0   7     0     0    1      trigger 1 on Right Arm
T2            0   7     0     1    1      trigger 2 on Right Arm
T3            0   7     0     2    1      trigger 3 on Right Arm
T4            0   7     0     3    1      trigger 4 on Right Arm
T5            0   7     0     4    1      trigger 5 on Right Arm
T6            0   7     0     5    1      trigger 6 on Right Arm
T7            0   7     0     6    1      trigger 7 on Right Arm
T8            0   7     0     7    1      trigger 8 on Right Arm
#trigger-1            0   7     0     0    1      trigger 1 on Right Arm
#trigger-2            0   7     0     1    1      trigger 2 on Right Arm
#trigger-3            0   7     0     2    1      trigger 3 on Right Arm
#trigger-4            0   7     0     3    1      trigger 4 on Right Arm
#trigger-5            0   7     0     4    1      trigger 5 on Right Arm
#trigger-6            0   7     0     5    1      trigger 6 on Right Arm
#trigger-7            0   7     0     6    1      trigger 7 on Right Arm
#trigger-8            0   7     0     7    1      1024 Hz clock (T8)
L_Strobe      0   7     0     8    1      Strobe from Left Arm
FastClock     0   7     0     9    1      103.8 kHz clock
EDTM          0   7     0    10    1      EDTM Signal
ADC_gate      0   7     0    11    1      ADC Gate from TM
L1A           0   7     0    12    1      Level 1 Accept
R_Strobe      0   7     0    13    1      Strobe/Retiming (from right arm)
S1            0   7     0    14    1      S1 L&R ORed
S2            0   7     0    15    1      S2 L&R ORed

clock        0   7     0     7    1      1024 Hz clock (T8)
TS-accept    0   7     0    12    1      Level 1 Accept

bcm_u10       0   7     0    16    1      Beam current, upstream cavity, gain = 10
bcm_u3        0   7     0    17    1      Beam current, upstream cavity, gain = 3
bcm_d10       0   7     0    18    1      Beam current, downstream cavity, gain = 10
bcm_d3        0   7     0    19    1      Beam current, downstream cavity, gain = 3
bcm_u1        0   7     0    20    1      Beam current, upstream cavity, gain = 1
bcm_d1        0   7     0    21    1      Beam current, downstream cavity, gain = 1

Lumi-1        0   7     1    16    1      DVCS Lumi-1
Lumi-2        0   7     1    17    1      DVCS Lumi-2
Lumi-3        0   7     1    18    1      DVCS Lumi-3
Lumi-4        0   7     1    19    1      DVCS Lumi-4
Lumi-5        0   7     1    20    1      DVCS Lumi-5
Lumi-6        0   7     1    21    1      DVCS Lumi-6
Lumi-7        0   7     1    22    1      DVCS Lumi-7
Lumi-8        0   7     1    23    1      DVCS Lumi-8

S1L-1         0   7     4     0    1      S1 scintillator on R-HRS
S1L-2         0   7     4     1    1      S1 scintillator on R-HRS
S1L-3         0   7     4     2    1      S1 scintillator on R-HRS
S1L-4         0   7     4     3    1      S1 scintillator on R-HRS
S1L-5         0   7     4     4    1      S1 scintillator on R-HRS
S1L-6         0   7     4     5    1      S1 scintillator on R-HRS

S1R-1         0   7     4     8    1      S1 scintillator on R-HRS
S1R-2         0   7     4     9    1      S1 scintillator on R-HRS
S1R-3         0   7     4    10    1      S1 scintillator on R-HRS
S1R-4         0   7     4    11    1      S1 scintillator on R-HRS
S1R-5         0   7     4    12    1      S1 scintillator on R-HRS
S1R-6         0   7     4    13    1      S1 scintillator on R-HRS

S2mL-1        0   7     1     0    1      S2m scintillator on R-HRS
S2mL-2        0   7     1     1    1      S2m scintillator on R-HRS
S2mL-3        0   7     1     2    1      S2m scintillator on R-HRS
S2mL-4        0   7     1     3    1      S2m scintillator on R-HRS
S2mL-5        0   7     1     4    1      S2m scintillator on R-HRS
S2mL-6        0   7     1     5    1      S2m scintillator on R-HRS
S2mL-7        0   7     1     6    1      S2m scintillator on R-HRS
S2mL-8        0   7     1     7    1      S2m scintillator on R-HRS
S2mL-9        0   7     1     8    1      S2m scintillator on R-HRS
S2mL-10       0   7     1     9    1      S2m scintillator on R-HRS
S2mL-11       0   7     1    10    1      S2m scintillator on R-HRS
S2mL-12       0   7     1    11    1      S2m scintillator on R-HRS
S2mL-13       0   7     1    12    1      S2m scintillator on R-HRS
S2mL-14       0   7     1    13    1      S2m scintillator on R-HRS
S2mL-15       0   7     1    14    1      S2m scintillator on R-HRS
S2mL-16       0   7     1    15    1      S2m scintillator on R-HRS

S2mR-1        0   7     3     0    1      S2m scintillator on R-HRS
S2mR-2        0   7     3     1    1      S2m scintillator on R-HRS
S2mR-3        0   7     3     2    1      S2m scintillator on R-HRS
S2mR-4        0   7     3     3    1      S2m scintillator on R-HRS
S2mR-5        0   7     3     4    1      S2m scintillator on R-HRS
S2mR-6        0   7     3     5    1      S2m scintillator on R-HRS
S2mR-7        0   7     3     6    1      S2m scintillator on R-HRS
S2mR-8        0   7     3     7    1      S2m scintillator on R-HRS
S2mR-9        0   7     3     8    1      S2m scintillator on R-HRS
S2mR-10       0   7     3     9    1      S2m scintillator on R-HRS
S2mR-11       0   7     3    10    1      S2m scintillator on R-HRS
S2mR-12       0   7     3    11    1      S2m scintillator on R-HRS
S2mR-13       0   7     3    12    1      S2m scintillator on R-HRS
S2mR-14       0   7     3    13    1      S2m scintillator on R-HRS
S2mR-15       0   7     3    14    1      S2m scintillator on R-HRS
S2mR-16       0   7     3    15    1      S2m scintillator on R-HRS

Cer1          0   7     5     0    1      1st chan of cerenkov
Cer2          0   7     5     1    1
Cer3          0   7     5     2    1      Right HRS
Cer4          0   7     5     3    1
Cer5          0   7     5     4    1
Cer6          0   7     5     5    1
Cer7          0   7     5     6    1
Cer8          0   7     5     7    1
Cer9          0   7     5     8    1
Cer10         0   7     5     9    1
CerSum        0   7     5    10    1      Right HRS

S0A           0   7     5    12    1      Right HRS
S0B           0   7     5    13    1
S0AND         0   7     5    14    1

# ------ Oct 22, 2010

DATE 22 10 2010

# Setup for DVCS.  

# directives for dvcsROC14

xscaler-tabs DVCS_ROC14 0:ROC14
xscaler-layout DVCS_ROC14 0:8x4
xscaler-pageslot DVCS_ROC14 0:slot0 
xscaler-pagename DVCS_ROC14 0:'DVCS ROC14 scaler'
xscaler-server DVCS_ROC14 IP:129.57.192.14 port:5024

# directives for dvcsROC17

xscaler-tabs DVCS_ROC17 0:ROC17
xscaler-layout DVCS_ROC17 0:8x4
xscaler-pageslot DVCS_ROC17 0:slot0 
xscaler-pagename DVCS_ROC17 0:'DVCS ROC17 scaler'
xscaler-server DVCS_ROC17 IP:129.57.192.80 port:5024

# Helicity-gated scalers are two "virtual" slots derived from 2nd (physical) scaler from left.

# directives for Left HRS

xscaler-tabs Left 0:LeCroy 1:nplus 2:nminus 3:Norm 4:s1 5:s2 6:Cer 7:spare 
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7
xscaler-pagename Left 0:'L-HRS LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Left 3:'L-HRS Normalization   (NOT gated by hel)'
xscaler-pagename Left 4:'S1 and so on (5th slot)'
xscaler-pagename Left 5:'S2 left and Right (6th slot)'
xscaler-pagename Left 6:'Cer (7th slot)'
xscaler-pagename Left 7:'Slot 7 (8th slot)'

xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:3 chan:24 rate:103700

crate-tied EvLeft 0:8 -1:8 1:8
slot-offset EvLeft 0:0 -1:-2 1:-1
slot-offset Left 0:0 -1:-2 1:-1 

#
# directives for Right HRS

xscaler-tabs Right 0:norm 1:S2mL 2:s2mR 3:s1 4:Gas Cer 5:Spare
xscaler-layout Right 0:8x4 1:4x4 2:4x4 3:4x4 4:4x4 5:4x4
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5
xscaler-pagename Right 0:'Lumi and R-HRS Normalization Scaler'
xscaler-pagename Right 1:'R-HRS S2m Left 1-16'
xscaler-pagename Right 2:'R-HRS S2m Right 1-16'
xscaler-pagename Right 3:'R-HRS S1'
xscaler-pagename Right 4:'R-HRS Gas Cherenkov'
xscaler-pagename Right 5:'R-HRS Spare CAEN Scaler 2'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:0 chan:23 rate:1024


# Left HRS:  
# desc  hel crate slot start nchan  long-description
T1(S2m)         0    8   3     0    1   trigger 1 on Left Arm
T2(S0)          0    8   3     1    1   trigger 2 on Left Arm
T3(S1.and.S2)    0    8   3     2    1   trigger 3 on Left Arm
T4-eff.trig.    0    8   3     3    1   trigger 4 on Left Arm
T5-ARSvalid     0    8   3     4    1   trigger 5 on Left Arm
T6-ARSstop      0    8   3     5    1   trigger 6 on Left Arm
T7-LED              0    8   3     6    1   trigger 7 on Left Arm
Clock           0    8   3     7    1   1024 Hz pulser trigger 8
DVCS-clk        0    8   3     8    1   unused
HRSsingles      0    8   3     9    1   unused
Singles-or      0    8   3    10    1   unused
Master-OR       0    8   3    11    1   Edtm pulser
TS-accept       0    8   3    12    1   Trigger Supervisor accepted triggers
edtm           0    8   3    13    1   
Electron-trig   0    8   3    14    1   Unser monitor
Pion-trig.      0    8   3    15    1 

bcm_u10   0    8   3    16    1   Beam current, upstream cavity, gain = 10
bcm_u3    0    8   3    17    1   Beam current, upstream cavity, gain = 3
bcm_u1    0    8   3    18    1   Beam current, upstream cavity, gain = 1
bcm_d10   0    8   3    19    1   Beam current, downstream cavity, gain = 10
bcm_d3    0    8   3    20    1   Beam current, downstream cavity, gain = 3
bcm_d1    0    8   3    21    1   Beam current, downstream cavity, gain = 1
empty     0    8   3    22    1   Left HRS

T8_clock    0    8   3     23    1   1024 Hz clock (T8)
clk104K     0    8   3    24    1   103.7 kHz clock  

empty     0    8   3    25    1   
empty     0    8   3    26    1   
empty     0    8   3    27    1
empty     0    8   3    28    1   
empty     0    8   3    28    1   
QRT       0    8   3    29    1   
HELIC     0    8   3    30    1   
LNE       0   8   3    31    1    load next event which loads scaler

S1L-0      0    8   4     0    1
S1L-1      0    8   4     1    1
S1L-2      0    8   4     2    1
S1L-3      0    8   4     3    1
S1L-4      0    8   4     4    1
S1L-5      0    8   4     5    1
blank      0    8   4     6    1
blank      0    8   4     7    1
S1R-6      0    8   4     8    1
S1R-7     0    8   4     9    1
S1R-8     0    8   4    10    1
S1R-9     0    8   4    11    1  Left HRS
S1R-10     0    8   4    12    1
S1R-11     0    8   4    13    1
blank     0    8   4    14    1
blank     0    8   4    15    1
chan-16     0    8   4    16    1
chan-17     0    8   4    17    1
chan-18     0    8   4    18    1
chan-19     0    8   4    19    1
chan-20     0    8   4    20    1
chan-21     0    8   4    21    1
chan-22     0    8   4    22    1
chan-23     0    8   4    23    1
chan-24     0    8   4    24    1
chan-25     0    8   4    25    1
chan-26     0    8   4    26    1
chan-27     0    8   4    27    1
chan-28     0    8   4    28    1
chan-29     0    8   4    29    1
chan-30     0    8   4    30    1
chan-31     0    8   4    31    1

S2L-1      0    8   5     0    1   1st chan of S2  left
S2L-2      0    8   5     1    1
S2L-3      0    8   5     2    1
S2L-4      0    8   5     3    1
S2L-5      0    8   5     4    1
S2L-6      0    8   5     5    1
S2L-7      0    8   5     6    1
S2L-8      0    8   5     7    1
S2L-9      0    8   5     8    1
S2L-10      0    8   5     9    1
S2L-11      0    8   5     10    1
S2L-12      0    8   5     11    1
S2L-13      0    8   5     12    1
S2L-14      0    8   5     13    1
S2L-15      0    8   5     14    1
S2L-16      0    8   5     15    1

S2R-1      0    8   5     16    1   1st chan of S2  right
S2R-2      0    8   5     17    1
S2R-3      0    8   5     18    1
S2R-4      0    8   5     19    1
S2R-5      0    8   5     20    1
S2R-6      0    8   5     21    1
S2R-7      0    8   5     22    1
S2R-8      0    8   5     23    1
S2R-9      0    8   5     24    1
S2R-10      0    8   5     25    1
S2R-11      0    8   5     26    1
S2R-12      0    8   5     27    1
S2R-13      0    8   5     28    1
S2R-14      0    8   5     29    1
S2R-15      0    8   5     30    1
S2R-16      0    8   5     31    1

#S0A       0    8   5     0   1   Left HRS
#S0B       0    8   5     1   1 

Cer0      0    8    6     0    1   1st chan of cerenkov
Cer1      0    8    6     1    1
Cer2      0    8    6     2    1   Left HRS
Cer3      0    8    6     3    1
Cer4      0    8    6     4    1
Cer5      0    8    6     5    1
Cer6      0    8    6     6    1
Cer7      0    8    6     7    1
Cer8      0    8    6     8    1
Cer9      0    8    6     9    1
CSum       0    8    6   10    1    Leftt HRS
S1      0    8    6   11    1

S0A       0    8    6     12    1    Leftt HRS
S0B       0    8    6     13    1
blank        0    8    6     14    1
S2        0    8    6     15    1
# Right HRS 
# R-HRS scalers really used by DVCS, but they will exist.
T1        0    7   0    16    1   trigger 1 on Right Arm
T2        0    7   0    17    1   trigger 2 on Right Arm
T3        0    7   0    18    1   trigger 3 on Right Arm
T4        0    7   0    19    1   trigger 4 on Right Arm
T5        0    7   0    20    1   trigger 5 on Right Arm
T6        0    7   0    21    1   trigger 6 on Right Arm
T7        0    7   0    22    1   trigger 7 on Right Arm
T8_clock  0    7   0    23    1   1024 Hz clock (T8)
trigger-8 0    7   0    23    1   1024 Hz trigger 8
#empty     0    7   0     8    1   1024 Hz trigger 8
#bcm_d3    0    7   0     9    1   Beam current, downstream cavity, gain = 3
#bcm_d10   0    7   0    10    1   Beam current, downstream cavity, gain = 10
#bcm_u3    0    7   0    11    1   trigger 7 on Right Arm
TS-accept  0    7   0    31    1   Trigger Supervisor accepted triggers 
#bcm_u1    0    7   0    13    1   Beam current, upstream cavity, gain = 1
#bcm_u10   0    7   0    14    1   Beam current, upstream cavity, gain = 10
#bcm_d1    0    7   0    15    1   Beam current, downstream cavity, gain = 1
#Empty     0    7   0    16    1   Place for Edtm pulser
#hel       0    7   0    17    1   Helicity
#QRT       0    7   0    18    1   QRT
#MPS       0    7   0    19    1   MPS
#empty     0    7   0    20    1   empty
#clk104k   0    7   0    21    1   103.7 kHz clock
#unser     0    7   0    22    1   Unser Monitor
#strobe    0    7   0    29    1   Strobe for S-ray trigger 

Lumi-1     0    7    0    0    1    DVCS Lumi-1
Lumi-2     0    7    0    1    1    DVCS Lumi-2
Lumi-3     0    7    0    2    1    DVCS Lumi-3
Lumi-4     0    7    0    3    1    DVCS Lumi-4
Lumi-5     0    7    0    4    1    DVCS Lumi-5
Lumi-6     0    7    0    5    1    DVCS Lumi-6
Lumi-7     0    7    0    6    1    DVCS Lumi-7
Lumi-8     0    7    0    7    1    DVCS Lumi-8

S1L-0      0    7    3    0    1    S1 scintillator on R-HRS
S1L-1      0    7    3    1    1    S1 scintillator on R-HRS
S1L-2      0    7    3    2    1    S1 scintillator on R-HRS
S1L-3      0    7    3    3    1    S1 scintillator on R-HRS
S1L-4      0    7    3    4    1    S1 scintillator on R-HRS
S1L-5      0    7    3    5    1    S1 scintillator on R-HRS

S1R-0      0    7    3    8    1    S1 scintillator on R-HRS
S1R-1      0    7    3    9    1    S1 scintillator on R-HRS
S1R-2      0    7    3   10    1    S1 scintillator on R-HRS
S1R-3      0    7    3   11    1    S1 scintillator on R-HRS
S1R-4      0    7    3   12    1    S1 scintillator on R-HRS
S1R-5      0    7    3   13    1    S1 scintillator on R-HRS

S2mL-0      0    7    1    0    1    S2m scintillator on R-HRS
S2mL-1      0    7    1    1    1    S2m scintillator on R-HRS
S2mL-2      0    7    1    2    1    S2m scintillator on R-HRS
S2mL-3      0    7    1    3    1    S2m scintillator on R-HRS
S2mL-4      0    7    1    4    1    S2m scintillator on R-HRS
S2mL-5      0    7    1    5    1    S2m scintillator on R-HRS
S2mL-6      0    7    1    6    1    S2m scintillator on R-HRS
S2mL-7      0    7    1    7    1    S2m scintillator on R-HRS
S2mL-8      0    7    1    8    1    S2m scintillator on R-HRS
S2mL-9      0    7    1    9    1    S2m scintillator on R-HRS
S2mL-10     0    7    1   10    1    S2m scintillator on R-HRS
S2mL-11     0    7    1   11    1    S2m scintillator on R-HRS
S2mL-12     0    7    1   12    1    S2m scintillator on R-HRS
S2mL-13     0    7    1   13    1    S2m scintillator on R-HRS
S2mL-14     0    7    1   14    1    S2m scintillator on R-HRS
S2mL-15     0    7    1   15    1    S2m scintillator on R-HRS
S2mR-0      0    7    2    0    1    S2m scintillator on R-HRS
S2mR-1      0    7    2    1    1    S2m scintillator on R-HRS
S2mR-2      0    7    2    2    1    S2m scintillator on R-HRS
S2mR-3      0    7    2    3    1    S2m scintillator on R-HRS
S2mR-4      0    7    2    4    1    S2m scintillator on R-HRS
S2mR-5      0    7    2    5    1    S2m scintillator on R-HRS
S2mR-6      0    7    2    6    1    S2m scintillator on R-HRS
S2mR-7      0    7    2    7    1    S2m scintillator on R-HRS
S2mR-8      0    7    2    8    1    S2m scintillator on R-HRS
S2mR-9      0    7    2    9    1    S2m scintillator on R-HRS
S2mR-10     0    7    2   10    1    S2m scintillator on R-HRS
S2mR-11     0    7    2   11    1    S2m scintillator on R-HRS
S2mR-12     0    7    2   12    1    S2m scintillator on R-HRS
S2mR-13     0    7    2   13    1    S2m scintillator on R-HRS
S2mR-14     0    7    2   14    1    S2m scintillator on R-HRS
S2mR-15     0    7    2   15    1    S2m scintillator on R-HRS


Cer0      0    7    4     0    1   1st chan of cerenkov
Cer1      0    7    4     1    1
Cer2      0    7    4     2    1   Right HRS
Cer3      0    7    4     3    1
Cer4      0    7    4     6    1
Cer5      0    7    4     7    1
Cer6      0    7    4     8    1
Cer7      0    7    4     9    1
Cer8      0    7    4    10    1
Cer9      0    7    4    11    1
CerSum      0    7    3   12    1    Right HRS

#S0A       0    7    6     0    1    Right HRS
#S0B       0    7    6     1    1


# ------ Aug 28, 2010

DATE 28 8 2010

# Setup for DVCS.  
# Helicity-gated scalers are two "virtual" slots derived from 2nd (physical) scaler from left.

# directives for Left HRS

xscaler-tabs Left 0:LeCroy 1:nplus 2:nminus 3:Norm 4:s1 5:s2 6:Cer 7:spare 
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7
xscaler-pagename Left 0:'L-HRS LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Left 3:'L-HRS Normalization   (NOT gated by hel)'
xscaler-pagename Left 4:'S1 and so on (5th slot)'
xscaler-pagename Left 5:'S2 left and Right (6th slot)'
xscaler-pagename Left 6:'Cer (7th slot)'
xscaler-pagename Left 7:'Slot 7 (8th slot)'

xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:3 chan:24 rate:103700

crate-tied EvLeft 0:8 -1:8 1:8
slot-offset EvLeft 0:0 -1:-2 1:-1
slot-offset Left 0:0 -1:-2 1:-1 

#
# directives for Right HRS

xscaler-tabs Right 0:norm 1:S2mL 2:s2mR 3:s1 4:Gas Cer 5:Spare
xscaler-layout Right 0:8x4 1:4x4 2:4x4 3:4x4 4:4x4 5:4x4
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5
xscaler-pagename Right 0:'Lumi and R-HRS Normalization Scaler'
xscaler-pagename Right 1:'R-HRS S2m Left 1-16'
xscaler-pagename Right 2:'R-HRS S2m Right 1-16'
xscaler-pagename Right 3:'R-HRS S1'
xscaler-pagename Right 4:'R-HRS Gas Cherenkov'
xscaler-pagename Right 5:'R-HRS Spare CAEN Scaler 2'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:0 chan:23 rate:1024


# Left HRS:  
# desc  hel crate slot start nchan  long-description
T1(S2m)         0    8   3     0    1   trigger 1 on Left Arm
T2(S0)          0    8   3     1    1   trigger 2 on Left Arm
T3(S1.and.S2)    0    8   3     2    1   trigger 3 on Left Arm
T4-eff.trig.    0    8   3     3    1   trigger 4 on Left Arm
T5-ARSvalid     0    8   3     4    1   trigger 5 on Left Arm
T6-ARSstop      0    8   3     5    1   trigger 6 on Left Arm
T7-LED              0    8   3     6    1   trigger 7 on Left Arm
Clock           0    8   3     7    1   1024 Hz pulser trigger 8
DVCS-clk        0    8   3     8    1   unused
HRSsingles      0    8   3     9    1   unused
Singles-or      0    8   3    10    1   unused
Master-OR       0    8   3    11    1   Edtm pulser
TS-accept       0    8   3    12    1   Trigger Supervisor accepted triggers
edtm           0    8   3    13    1   
Electron-trig   0    8   3    14    1   Unser monitor
Pion-trig.      0    8   3    15    1 

bcm_u10   0    8   3    16    1   Beam current, upstream cavity, gain = 10
bcm_u3    0    8   3    17    1   Beam current, upstream cavity, gain = 3
bcm_u1    0    8   3    18    1   Beam current, upstream cavity, gain = 1
bcm_d10   0    8   3    19    1   Beam current, downstream cavity, gain = 10
bcm_d3    0    8   3    20    1   Beam current, downstream cavity, gain = 3
bcm_d1    0    8   3    21    1   Beam current, downstream cavity, gain = 1
empty     0    8   3    22    1   Left HRS

T8_clock    0    8   3     23    1   1024 Hz clock (T8)
clk104K     0    8   3    24    1   103.7 kHz clock  

empty     0    8   3    25    1   
empty     0    8   3    26    1   
empty     0    8   3    27    1
empty     0    8   3    28    1   
empty     0    8   3    29    1  
empty     0    8   3    30    1 
empty     0    8   3    31    1

S1L-0      0    8   4     0    1
S1L-1      0    8   4     1    1
S1L-2      0    8   4     2    1
S1L-3      0    8   4     3    1
S1L-4      0    8   4     4    1
S1L-5      0    8   4     5    1
blank      0    8   4     6    1
blank      0    8   4     7    1
S1R-6      0    8   4     8    1
S1R-7     0    8   4     9    1
S1R-8     0    8   4    10    1
S1R-9     0    8   4    11    1  Left HRS
S1R-10     0    8   4    12    1
S1R-11     0    8   4    13    1
blank     0    8   4    14    1
blank     0    8   4    15    1
chan-16     0    8   4    16    1
chan-17     0    8   4    17    1
chan-18     0    8   4    18    1
chan-19     0    8   4    19    1
chan-20     0    8   4    20    1
chan-21     0    8   4    21    1
chan-22     0    8   4    22    1
chan-23     0    8   4    23    1
chan-24     0    8   4    24    1
chan-25     0    8   4    25    1
chan-26     0    8   4    26    1
chan-27     0    8   4    27    1
chan-28     0    8   4    28    1
chan-29     0    8   4    29    1
chan-30     0    8   4    30    1
chan-31     0    8   4    31    1

S2L-1      0    8   5     0    1   1st chan of S2  left
S2L-2      0    8   5     1    1
S2L-3      0    8   5     2    1
S2L-4      0    8   5     3    1
S2L-5      0    8   5     4    1
S2L-6      0    8   5     5    1
S2L-7      0    8   5     6    1
S2L-8      0    8   5     7    1
S2L-9      0    8   5     8    1
S2L-10      0    8   5     9    1
S2L-11      0    8   5     10    1
S2L-12      0    8   5     11    1
S2L-13      0    8   5     12    1
S2L-14      0    8   5     13    1
S2L-15      0    8   5     14    1
S2L-16      0    8   5     15    1

S2R-1      0    8   5     16    1   1st chan of S2  right
S2R-2      0    8   5     17    1
S2R-3      0    8   5     18    1
S2R-4      0    8   5     19    1
S2R-5      0    8   5     20    1
S2R-6      0    8   5     21    1
S2R-7      0    8   5     22    1
S2R-8      0    8   5     23    1
S2R-9      0    8   5     24    1
S2R-10      0    8   5     25    1
S2R-11      0    8   5     26    1
S2R-12      0    8   5     27    1
S2R-13      0    8   5     28    1
S2R-14      0    8   5     29    1
S2R-15      0    8   5     30    1
S2R-16      0    8   5     31    1

#S0A       0    8   5     0   1   Left HRS
#S0B       0    8   5     1   1 

Cer0      0    8    6     0    1   1st chan of cerenkov
Cer1      0    8    6     1    1
Cer2      0    8    6     2    1   Left HRS
Cer3      0    8    6     3    1
Cer4      0    8    6     4    1
Cer5      0    8    6     5    1
Cer6      0    8    6     6    1
Cer7      0    8    6     7    1
Cer8      0    8    6     8    1
Cer9      0    8    6     9    1
CSum       0    8    6   10    1    Leftt HRS
S1      0    8    6   11    1

S0A       0    8    6     12    1    Leftt HRS
S0B       0    8    6     13    1
blank        0    8    6     14    1
S2        0    8    6     15    1
# Right HRS 
# R-HRS scalers really used by DVCS, but they will exist.
T1        0    7   0    16    1   trigger 1 on Right Arm
T2        0    7   0    17    1   trigger 2 on Right Arm
T3        0    7   0    18    1   trigger 3 on Right Arm
T4        0    7   0    19    1   trigger 4 on Right Arm
T5        0    7   0    20    1   trigger 5 on Right Arm
T6        0    7   0    21    1   trigger 6 on Right Arm
T7        0    7   0    22    1   trigger 7 on Right Arm
T8_clock  0    7   0    23    1   1024 Hz clock (T8)
trigger-8 0    7   0    23    1   1024 Hz trigger 8
#empty     0    7   0     8    1   1024 Hz trigger 8
#bcm_d3    0    7   0     9    1   Beam current, downstream cavity, gain = 3
#bcm_d10   0    7   0    10    1   Beam current, downstream cavity, gain = 10
#bcm_u3    0    7   0    11    1   trigger 7 on Right Arm
TS-accept  0    7   0    31    1   Trigger Supervisor accepted triggers 
#bcm_u1    0    7   0    13    1   Beam current, upstream cavity, gain = 1
#bcm_u10   0    7   0    14    1   Beam current, upstream cavity, gain = 10
#bcm_d1    0    7   0    15    1   Beam current, downstream cavity, gain = 1
#Empty     0    7   0    16    1   Place for Edtm pulser
#hel       0    7   0    17    1   Helicity
#QRT       0    7   0    18    1   QRT
#MPS       0    7   0    19    1   MPS
#empty     0    7   0    20    1   empty
#clk104k   0    7   0    21    1   103.7 kHz clock
#unser     0    7   0    22    1   Unser Monitor
#strobe    0    7   0    29    1   Strobe for S-ray trigger 

Lumi-1     0    7    0    0    1    DVCS Lumi-1
Lumi-2     0    7    0    1    1    DVCS Lumi-2
Lumi-3     0    7    0    2    1    DVCS Lumi-3
Lumi-4     0    7    0    3    1    DVCS Lumi-4
Lumi-5     0    7    0    4    1    DVCS Lumi-5
Lumi-6     0    7    0    5    1    DVCS Lumi-6
Lumi-7     0    7    0    6    1    DVCS Lumi-7
Lumi-8     0    7    0    7    1    DVCS Lumi-8

S1L-0      0    7    3    0    1    S1 scintillator on R-HRS
S1L-1      0    7    3    1    1    S1 scintillator on R-HRS
S1L-2      0    7    3    2    1    S1 scintillator on R-HRS
S1L-3      0    7    3    3    1    S1 scintillator on R-HRS
S1L-4      0    7    3    4    1    S1 scintillator on R-HRS
S1L-5      0    7    3    5    1    S1 scintillator on R-HRS

S1R-0      0    7    3    8    1    S1 scintillator on R-HRS
S1R-1      0    7    3    9    1    S1 scintillator on R-HRS
S1R-2      0    7    3   10    1    S1 scintillator on R-HRS
S1R-3      0    7    3   11    1    S1 scintillator on R-HRS
S1R-4      0    7    3   12    1    S1 scintillator on R-HRS
S1R-5      0    7    3   13    1    S1 scintillator on R-HRS

S2mL-0      0    7    1    0    1    S2m scintillator on R-HRS
S2mL-1      0    7    1    1    1    S2m scintillator on R-HRS
S2mL-2      0    7    1    2    1    S2m scintillator on R-HRS
S2mL-3      0    7    1    3    1    S2m scintillator on R-HRS
S2mL-4      0    7    1    4    1    S2m scintillator on R-HRS
S2mL-5      0    7    1    5    1    S2m scintillator on R-HRS
S2mL-6      0    7    1    6    1    S2m scintillator on R-HRS
S2mL-7      0    7    1    7    1    S2m scintillator on R-HRS
S2mL-8      0    7    1    8    1    S2m scintillator on R-HRS
S2mL-9      0    7    1    9    1    S2m scintillator on R-HRS
S2mL-10     0    7    1   10    1    S2m scintillator on R-HRS
S2mL-11     0    7    1   11    1    S2m scintillator on R-HRS
S2mL-12     0    7    1   12    1    S2m scintillator on R-HRS
S2mL-13     0    7    1   13    1    S2m scintillator on R-HRS
S2mL-14     0    7    1   14    1    S2m scintillator on R-HRS
S2mL-15     0    7    1   15    1    S2m scintillator on R-HRS
S2mR-0      0    7    2    0    1    S2m scintillator on R-HRS
S2mR-1      0    7    2    1    1    S2m scintillator on R-HRS
S2mR-2      0    7    2    2    1    S2m scintillator on R-HRS
S2mR-3      0    7    2    3    1    S2m scintillator on R-HRS
S2mR-4      0    7    2    4    1    S2m scintillator on R-HRS
S2mR-5      0    7    2    5    1    S2m scintillator on R-HRS
S2mR-6      0    7    2    6    1    S2m scintillator on R-HRS
S2mR-7      0    7    2    7    1    S2m scintillator on R-HRS
S2mR-8      0    7    2    8    1    S2m scintillator on R-HRS
S2mR-9      0    7    2    9    1    S2m scintillator on R-HRS
S2mR-10     0    7    2   10    1    S2m scintillator on R-HRS
S2mR-11     0    7    2   11    1    S2m scintillator on R-HRS
S2mR-12     0    7    2   12    1    S2m scintillator on R-HRS
S2mR-13     0    7    2   13    1    S2m scintillator on R-HRS
S2mR-14     0    7    2   14    1    S2m scintillator on R-HRS
S2mR-15     0    7    2   15    1    S2m scintillator on R-HRS


Cer0      0    7    4     0    1   1st chan of cerenkov
Cer1      0    7    4     1    1
Cer2      0    7    4     2    1   Right HRS
Cer3      0    7    4     3    1
Cer4      0    7    4     6    1
Cer5      0    7    4     7    1
Cer6      0    7    4     8    1
Cer7      0    7    4     9    1
Cer8      0    7    4    10    1
Cer9      0    7    4    11    1
CerSum      0    7    3   12    1    Right HRS

#S0A       0    7    6     0    1    Right HRS
#S0B       0    7    6     1    1




# ------ Jun 18, 2010

DATE 18 6 2010

# Setup for APEX.  Two HRS spectrometers.
# No helicity-gated scalers.

# directives for Left HRS

xscaler-tabs Left 0:Spare 1:Norm 2:S2m 3:Spare 4:GasC 5:raw scal 0 6:raw scal 1  7:raw scal 2 8:raw scal 3 0:raw scal 4  
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 
xscaler-pagename Left 0:'L-HRS LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS Normalization'
xscaler-pagename Left 2:'S2m Left (1 to 16) S2m Right (17 to 32) '
xscaler-pagename Left 3:'Empty at the moment'
xscaler-pagename Left 4:'Gas Cerenkov + S0'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:1 chan:23 rate:1024

#
# directives for Right HRS

xscaler-tabs Right 0:norm 1:Spare 2:S2m 3:GasC 4:S0 5:Spare 6:Spare 7:Spare:
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:4x4 4:4x4 5:4x4 6:4x4 7:4x4 
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7 
xscaler-pagename Right 0:'R-HRS Normalization Scaler'
xscaler-pagename Right 1:'R-HRS Spare Scaler with NIM inputs'
xscaler-pagename Right 2:'R-HRS S2m PMTs'
xscaler-pagename Right 3:'R-HRS Gas Cerenkov PMTs'
xscaler-pagename Right 4:'R-HRS S0 Scintillator PMTs'
xscaler-pagename Right 5:'R-HRS Spare LeCroy Scaler'
xscaler-pagename Right 6:'R-HRS Spare CAEN Scaler 1'
xscaler-pagename Right 7:'R-HRS Spare CAEN Scaler 2'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:0 chan:7 rate:1024


# Left HRS:  
# desc  hel crate slot start nchan  long-description
T1       0    8   1     0    1   trigger 1 on Left Arm
T2       0    8   1     1    1   trigger 2 on Left Arm
T3 0    8   1     2    1   trigger 3 on Left Arm
T4 0    8   1     3    1   trigger 4 on Left Arm
T5 0    8   1     4    1   trigger 5 on Left Arm
T6 0    8   1     5    1   trigger 6 on Left Arm
T7 0    8   1     6    1   trigger 7 on Left Arm
T8_clock     0    8   1     23    1   1024 Hz clock (T8)
trigger-8 0    8   1     7    1   1024 Hz pulser trigger 8
#
bcm_u10   0    8   1    16    1   Beam current, upstream cavity, gain = 10
empty	  0    8   1     9    1   unused
bcm_d3    0    8   1    20    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   1    19    1   Beam current, downstream cavity, gain = 10
L1A	  0    8   1    12    1   Trigger Supervisor accepted triggers
bcm_u1    0    8   1    18    1   Beam current, upstream cavity, gain = 1
unser     0    8   1    14    1   Unser monitor
bcm_d1    0    8   1    21    1   Beam current, downstream cavity, gain = 1
bcm_u3    0    8   1    17    1   Beam current, upstream cavity, gain = 3
empty	  0    8   1    10    1   unused
edtm      0    8   1    11    1   Edtm pulser
strobe    0    8   1    12    1   Strobe for S-ray trigger
empty     0    8   1    13    1   
T1_copy   0    8   1    15    1 
empty     0    8   1    22    1   Left HRS
empty     0    8   1    23    1   
empty     0    8   1    24    1   
empty     0    8   1    25    1   
empty     0    8   1    26    1   
empty     0    8   1    27    1
clk104k   0    8   1    28    1   103.7 kHz clock
empty     0    8   1    29    1  
empty     0    8   1    30    1 
empty     0    8   1    31    1

S2m-0      0    8   2     0    1
S2m-1      0    8   2     1    1
S2m-2      0    8   2     2    1
S2m-3      0    8   2     3    1
S2m-4      0    8   2     4    1
S2m-5      0    8   2     5    1
S2m-6      0    8   2     6    1
S2m-7      0    8   2     7    1
S2m-8      0    8   2     8    1
S2m-9      0    8   2     9    1
S2m-10     0    8   2    10    1
S2m-11     0    8   2    11    1  Left HRS
S2m-12     0    8   2    12    1
S2m-13     0    8   2    13    1
S2m-14     0    8   2    14    1
S2m-15     0    8   2    15    1
S2m-16     0    8   2    16    1
S2m-17     0    8   2    17    1
S2m-18     0    8   2    18    1
S2m-19     0    8   2    19    1
S2m-20     0    8   2    20    1
S2m-21     0    8   2    21    1
S2m-22     0    8   2    22    1
S2m-23     0    8   2    23    1
S2m-24     0    8   2    24    1
S2m-25     0    8   2    25    1
S2m-26     0    8   2    26    1
S2m-27     0    8   2    27    1
S2m-28     0    8   2    28    1
S2m-29     0    8   2    29    1
S2m-30     0    8   2    30    1
S2m-31     0    8   2    31    1

Cer0      0    8   4     0    1   1st chan of cerenkov
Cer1      0    8   4     1    1
Cer2      0    8   4     2    1   Left HRS
Cer3      0    8   4     3    1
Cer4      0    8   4     4    1
Cer5      0    8   4     5    1
Cer6      0    8   4     6    1
Cer7      0    8   4     7    1
Cer8      0    8   4     8    1
Cer9      0    8   4     9    1

CerSum    0    8   4     10   1   Left HRS

S0A       0    8   4     16   1   Left HRS
S0B       0    8   4     17   1 




# Right HRS:
T1        0    7   0     0    1   trigger 1 on Right Arm
T2        0    7   0     1    1   trigger 2 on Right Arm
T3        0    7   0     2    1   trigger 3 on Right Arm
T4        0    7   0     3    1   trigger 4 on Right Arm
T5        0    7   0     4    1   trigger 5 on Right Arm
T6        0    7   0     5    1   trigger 6 on Right Arm
T7        0    7   0     6    1   trigger 7 on Right Arm
T8_clock  0    7   0     7    1   1024 Hz clock (T8)
trigger-8 0    7   0     7    1   1024 Hz trigger 8
empty     0    7   0     8    1   1024 Hz trigger 8
bcm_d3    0    7   0     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   0    10    1   Beam current, downstream cavity, gain = 10
bcm_u3    0    7   0    11    1   trigger 7 on Right Arm
TS-accept 0    7   0    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   0    13    1   Beam current, upstream cavity, gain = 1
bcm_u10   0    7   0    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   0    15    1   Beam current, downstream cavity, gain = 1
Empty     0    7   0    16    1   Place for Edtm pulser
hel       0    7   0    17    1   Helicity
QRT       0    7   0    18    1   QRT
MPS       0    7   0    19    1   MPS
empty     0    7   0    20    1   empty
clk104k   0    7   0    21    1   103.7 kHz clock
unser     0    7   0    22    1   Unser Monitor
strobe    0    7   0    29    1   Strobe for S-ray trigger 

S2m-0      0    7    2    0    1    S2m scintillator on R-HRS
S2m-1      0    7    2    1    1    S2m scintillator on R-HRS
S2m-2      0    7    2    2    1    S2m scintillator on R-HRS
S2m-3      0    7    2    3    1    S2m scintillator on R-HRS
S2m-4      0    7    2    4    1    S2m scintillator on R-HRS
S2m-5      0    7    2    5    1    S2m scintillator on R-HRS
S2m-6      0    7    2    6    1    S2m scintillator on R-HRS
S2m-7      0    7    2    7    1    S2m scintillator on R-HRS
S2m-8      0    7    2    8    1    S2m scintillator on R-HRS
S2m-9      0    7    2    9    1    S2m scintillator on R-HRS
S2m-10     0    7    2   10    1    S2m scintillator on R-HRS
S2m-11     0    7    2   11    1    S2m scintillator on R-HRS
S2m-12     0    7    2   12    1    S2m scintillator on R-HRS
S2m-13     0    7    2   13    1    S2m scintillator on R-HRS
S2m-14     0    7    2   14    1    S2m scintillator on R-HRS
S2m-15     0    7    2   15    1    S2m scintillator on R-HRS
S2m-16     0    7    2   16    1    S2m scintillator on R-HRS
S2m-17     0    7    2   17    1    S2m scintillator on R-HRS
S2m-18     0    7    2   18    1    S2m scintillator on R-HRS
S2m-19     0    7    2   19    1    S2m scintillator on R-HRS
S2m-20     0    7    2   20    1    S2m scintillator on R-HRS
S2m-21     0    7    2   21    1    S2m scintillator on R-HRS
S2m-22     0    7    2   22    1    S2m scintillator on R-HRS
S2m-23     0    7    2   23    1    S2m scintillator on R-HRS
S2m-24     0    7    2   24    1    S2m scintillator on R-HRS
S2m-25     0    7    2   25    1    S2m scintillator on R-HRS
S2m-26     0    7    2   26    1    S2m scintillator on R-HRS
S2m-27     0    7    2   27    1    S2m scintillator on R-HRS
S2m-28     0    7    2   28    1    S2m scintillator on R-HRS
S2m-29     0    7    2   29    1    S2m scintillator on R-HRS
S2m-30     0    7    2   30    1    S2m scintillator on R-HRS
S2m-31     0    7    2   31    1    S2m scintillator on R-HRS

Cer0      0    7    3     0    1   1st chan of cerenkov
Cer1      0    7    3     1    1
Cer2      0    7    3     2    1   Right HRS
Cer3      0    7    3     3    1
Cer4      0    7    3     6    1
Cer5      0    7    3     7    1
Cer6      0    7    3     8    1
Cer7      0    7    3     9    1
Cer8      0    7    3    10    1
Cer9      0    7    3    11    1
CerSum      0    7    3   12    1    Right HRS

S0A       0    7    4     0    1    Right HRS
S0B       0    7    4     1    1




# ------ Feb 2, 2010
DATE 2 2 2010
# Simplified setup for PREX.  Two HRS spectrometers.
# No helicity-gated scalers.

# directives for Left HRS

xscaler-tabs Left 0:scal1 1:norm 2:sca3 3:sca4 4:sca5  
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 
xscaler-pagename Left 0:'L-HRS LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS Normalization'
xscaler-pagename Left 2:'Empty at the moment'
xscaler-pagename Left 3:'Empty at the moment'
xscaler-pagename Left 4:'Empty at the moment'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:1 chan:7 rate:1024

#
# directives for Right HRS

xscaler-tabs Right 0:norm 1:Spare 2:S1 3:S2 4:Spare 5:Spare:
xscaler-layout Right 0:8x4 1:8x4 2:4x4 3:4x4 4:4x4 5:4x4 
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 
xscaler-pagename Right 0:'R-HRS Normalization Scaler'
xscaler-pagename Right 1:'R-HRS spare scaler'
xscaler-pagename Right 2:'R-HRS S1 scaler'
xscaler-pagename Right 3:'R-HRS S2 scaler'
xscaler-pagename Right 4:'R-HRS spare scaler'
xscaler-pagename Right 5:'R-HRS Spare scaler, 2nd Caen scaler'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:0 chan:7 rate:1024


# Left HRS:  
# desc  hel crate slot start nchan  long-description
T1 0    8   1     0    1   trigger 1 on Left Arm
T2 0    8   1     1    1   trigger 2 on Left Arm
T3 0    8   1     2    1   trigger 3 on Left Arm
T4 0    8   1     3    1   trigger 4 on Left Arm
T5 0    8   1     4    1   trigger 5 on Left Arm
T6 0    8   1     5    1   trigger 6 on Left Arm
T7 0    8   1     6    1   trigger 7 on Left Arm
T8_clock     0    8   1     7    1   1024 Hz clock (T8)
trigger-8 0    8   1     7    1   1024 Hz pulser trigger 8
bcm_u10   0    8   1     8    1   Beam current, upstream cavity, gain = 10
empty	  0    8   1     9    1   unused
bcm_d3    0    8   1    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   1    11    1   Beam current, downstream cavity, gain = 10
L1A	  0    8   1    12    1   Trigger Supervisor accepted triggers
bcm_u1    0    8   1    13    1   Beam current, upstream cavity, gain = 1
unser     0    8   1    14    1   Unser monitor
bcm_d1    0    8   1    15    1   Beam current, downstream cavity, gain = 1
bcm_u3    0    8   1    16    1   Beam current, upstream cavity, gain = 3
empty	  0    8   1    17    1   unused
edtm      0    8   1    18    1   Edtm pulser
strobe    0    8   1    19    1   Strobe for S-ray trigger
empty     0    8   1    20    1   
T1_copy   0    8   1    21    1 
empty     0    8   1    22    1 
empty     0    8   1    23    1   
empty     0    8   1    24    1   
empty     0    8   1    25    1   
empty     0    8   1    26    1   
empty     0    8   1    27    1
clk104k   0    8   1    28    1   103.7 kHz clock
empty     0    8   1    29    1  
empty     0    8   1    30    1 
empty     0    8   1    31    1


# Right HRS:
T1        0    7   0     0    1   trigger 1 on Right Arm
T2        0    7   0     1    1   trigger 2 on Right Arm
T3        0    7   0     2    1   trigger 3 on Right Arm
T4        0    7   0     3    1   trigger 4 on Right Arm
T5        0    7   0     4    1   trigger 5 on Right Arm
T6        0    7   0     5    1   trigger 6 on Right Arm
T7        0    7   0     6    1   trigger 7 on Right Arm
T8_clock  0    7   0     7    1   1024 Hz clock (T8)
trigger-8 0    7   0     7    1   1024 Hz trigger 8
empty     0    7   0     8    1   1024 Hz trigger 8
bcm_d3    0    7   0     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   0    10    1   Beam current, downstream cavity, gain = 10
bcm_u3    0    7   0    11    1   trigger 7 on Right Arm
TS-accept 0    7   0    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   0    13    1   Beam current, upstream cavity, gain = 1
bcm_u10   0    7   0    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   0    15    1   Beam current, downstream cavity, gain = 1
Empty     0    7   0    16    1   Place for Edtm pulser
hel       0    7   0    17    1   Helicity
QRT       0    7   0    18    1   QRT
MPS       0    7   0    19    1   MPS
empty     0    7   0    20    1   empty
clk104k   0    7   0    21    1   103.7 kHz clock
unser     0    7   0    22    1   Unser Monitor
strobe    0    7   0    29    1   Strobe for S-ray trigger 


# More on R-HRS -- detectors
# desc  hel crate slot start nchan  long-description
Gas_cer      0    7   4   0    10    Gas-cer
#Prex-Quartz  0    7   4   1    1    Prex Quartz detector
#Prex-Scint   0    7   4   2    1    Prex Scintillator trigger

S1_1L          0    7   2   0    6    S1 left PMTs
S1_1R          0    7   2   6    6    S1 right PMTs
S2_1L          0    7   3   0    6    S2 left  PMTs
S2_1R          0    7   3   6    6    S2 right PMTs


# ------ Nov8, 2009
DATE 11 8 2009
# Simplified setup for HAPPEX.  Two HRS spectrometers.
# No helicity-gated scalers.

# directives for Left HRS

xscaler-tabs Left 0:scal1 1:scal2 2:norm 3:Gascer_S1 4:S2M  
xscaler-layout Left 0:4x4 1:4x4 2:8x4 3:8x4 4:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 
xscaler-pagename Left 0:'L-HRS 1st LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS 2nd LeCroy Scaler'
xscaler-pagename Left 2:'L-HRS Normalization'
xscaler-pagename Left 3:'L-HRS gas-cerenkov(0-11), S1L (16-22) and S1R (25-30)'
xscaler-pagename Left 4:'L-HRS S2M right (1-16), S2M left (17-32)'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:2 chan:7 rate:1024

#
# directives for Right HRS

xscaler-tabs Right 0:norm 1:Spare 2:S1 3:S2 4:Gas-cer 5:Spare:
xscaler-layout Right 0:8x4 1:8x4 2:4x4 3:4x4 4:4x4 5:4x4 
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 
xscaler-pagename Right 0:'R-HRS Normalization Scaler'
xscaler-pagename Right 1:'R-HRS spare scaler'
xscaler-pagename Right 2:'R-HRS S1 scaler'
xscaler-pagename Right 3:'R-HRS  S2 scaler'
xscaler-pagename Right 4:'R-HRS Gas Cerenkov'
xscaler-pagename Right 5:'R-HRS Spare scaler, 2nd Caen scaler'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:0 chan:7 rate:1024


# Left HRS:  
# desc  hel crate slot start nchan  long-description
T1 0    8   2     0    1   trigger 1 on Left Arm
T2 0    8   2     1    1   trigger 2 on Left Arm
T3 0    8   2     2    1   trigger 3 on Left Arm
T4 0    8   2     3    1   trigger 4 on Left Arm
T5 0    8   2     4    1   trigger 5 on Left Arm
T6 0    8   2     5    1   trigger 6 on Left Arm
T7 0    8   2     6    1   trigger 7 on Left Arm
T8_clock     0    8   2     7    1   1024 Hz clock (T8)
trigger-8 0    8   2     7    1   1024 Hz pulser trigger 8
bcm_u10   0    8   2     8    1   Beam current, upstream cavity, gain = 10
empty	  0    8   2     9    1   unused
bcm_d3    0    8   2    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   2    11    1   Beam current, downstream cavity, gain = 10
L1A	  0    8   2    12    1   Trigger Supervisor accepted triggers
bcm_u1    0    8   2    13    1   Beam current, upstream cavity, gain = 1
unser     0    8   2    14    1   Unser monitor
bcm_d1    0    8   2    15    1   Beam current, downstream cavity, gain = 1
bcm_u3    0    8   2    16    1   Beam current, upstream cavity, gain = 3
empty	  0    8   2    17    1   unused
edtm      0    8   2    18    1   Edtm pulser
strobe    0    8   2    19    1   Strobe for S-ray trigger
empty     0    8   2    20    1   
T1_copy   0    8   2    21    1 
empty     0    8   2    22    1 
empty     0    8   2    23    1   
empty     0    8   2    24    1   
empty     0    8   2    25    1   
empty     0    8   2    26    1   
empty     0    8   2    27    1
clk104k   0    8   2    28    1   103.7 kHz clock
empty     0    8   2    29    1  
empty     0    8   2    30    1 
empty     0    8   2    31    1

Gas_cer        0    8   3   0    1    GC1 PMT
GC_OR          0    8   3   10   1    GC_OR PMT

S1_1L          0    8   3   16   1    S1 1L PMT
S1_1R          0    8   3   24   1    S1 1R PMT

# Right HRS:
T1        0    7   0     0    1   trigger 1 on Right Arm
T2        0    7   0     1    1   trigger 2 on Right Arm
T3        0    7   0     2    1   trigger 3 on Right Arm
T4        0    7   0     3    1   trigger 4 on Right Arm
T5        0    7   0     4    1   trigger 5 on Right Arm
T6        0    7   0     5    1   trigger 6 on Right Arm
T7        0    7   0     6    1   trigger 7 on Right Arm
T8_clock  0    7   0     7    1   1024 Hz clock (T8)
trigger-8 0    7   0     7    1   1024 Hz trigger 8
empty     0    7   0     8    1   1024 Hz trigger 8
bcm_d3    0    7   0     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   0    10    1   Beam current, downstream cavity, gain = 10
bcm_u3    0    7   0    11    1   trigger 7 on Right Arm
TS-accept 0    7   0    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   0    13    1   Beam current, upstream cavity, gain = 1
bcm_u10   0    7   0    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   0    15    1   Beam current, downstream cavity, gain = 1
Empty     0    7   0    16    1   Place for Edtm pulser
hel       0    7   0    17    1   Helicity
QRT       0    7   0    18    1   QRT
MPS       0    7   0    19    1   MPS
empty     0    7   0    20    1   empty
clk104k   0    7   0    21    1   103.7 kHz clock
unser     0    7   0    22    1   Unser Monitor
strobe    0    7   0    29    1   Strobe for S-ray trigger 


# More on R-HRS -- detectors
# desc  hel crate slot start nchan  long-description
Gas_cer      0    7   4   0    10    Gas-cer
#Prex-Quartz  0    7   4   1    1    Prex Quartz detector
#Prex-Scint   0    7   4   2    1    Prex Scintillator trigger

S1_1L          0    7   2   0    6    S1 left PMTs
S1_1R          0    7   2   6    6    S1 right PMTs
S2_1L          0    7   3   0    6    S2 left  PMTs
S2_1R          0    7   3   6    6    S2 right PMTs


# ------ Aug 10, 2009
DATE 10 8 2009
# Simplified setup for HAPPEX.  Two HRS spectrometers.
# No helicity-gated scalers.

# directives for Left HRS

xscaler-tabs Left 0:scal1 1:scal2 2:norm 3:scal3 4:scal4 
xscaler-layout Left 0:4x4 1:4x4 2:8x4 3:8x4 4:8x4 
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 
xscaler-pagename Left 0:'L-HRS 1st LeCroy Scaler'
xscaler-pagename Left 1:'L-HRS 2nd LeCroy Scaler'
xscaler-pagename Left 2:'L-HRS Normalization'
xscaler-pagename Left 3:'L-HRS SIS3800 scaler'
xscaler-pagename Left 4:'L-HRS SIS3800 scaler'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:2 chan:7 rate:1024

#
# directives for Right HRS

xscaler-tabs Right 0:norm 1:scaler2 2:scaler3 3:scaler4 4:scaler5 5:scaler6:
xscaler-layout Right 0:8x4 1:8x4 2:4x4 3:4x4 4:4x4 5:4x4 
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 
xscaler-pagename Right 0:'R-HRS Normalization Scaler'
xscaler-pagename Right 1:'R-HRS SIS3800 scaler'
xscaler-pagename Right 2:'R-HRS 1st LeCroy scaler'
xscaler-pagename Right 3:'R-HRS 2nd LeCroy scaler'
xscaler-pagename Right 4:'R-HRS 1st Caen scaler'
xscaler-pagename Right 5:'R-HRS 2nd Caen scaler'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:0 chan:7 rate:1024


# Left HRS:  
# desc  hel crate slot start nchan  long-description
T1-HapdetTrig 0    8   2     0    1   trigger 1 on Left Arm
T2-s0Trig 0    8   2     1    1   trigger 2 on Left Arm
trigger-3 0    8   2     2    1   trigger 3 on Left Arm
trigger-4 0    8   2     3    1   trigger 4 on Left Arm
trigger-5 0    8   2     4    1   trigger 5 on Left Arm
trigger-6 0    8   2     5    1   trigger 6 on Left Arm
trigger-7 0    8   2     6    1   trigger 7 on Left Arm
clock     0    8   2     7    1   1024 Hz clock (T8)
trigger-8 0    8   2     7    1   1024 Hz pulser trigger 8
TS-accept 0    8   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   2    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   2    16    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   2     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   2    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   2    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   2    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   2    19    1   Strobe for S-ray trigger
unser     0    8   2    14    1   Unser monitor
edtm      0    8   2    18    1   Edtm pulser
clk104k   0    8   2    28    1   103.7 kHz clock

# desc  hel crate slot start nchan  long-description
HAPPEX       0    8   3   6    1    HAPPEX detector
S0f          0    8   3   16   1    S0 front PMT
S0b          0    8   3   24   1    S0 back PMT

# Right HRS:
T1-HAPdetTrig 0  7   0     0    1   trigger 1 on Right Arm
T2-s0Trig   0    7   0     1    1   trigger 2 on Right Arm
T3-PrexTrig 0    7   0     2    1   trigger 3 on Right Arm
trigger-4 0    7   0     3    1   trigger 4 on Right Arm
trigger-5 0    7   0     4    1   trigger 5 on Right Arm
trigger-6 0    7   0     5    1   trigger 6 on Right Arm
trigger-7 0    7   0    11    1   trigger 7 on Right Arm
clock     0    7   0     7    1   1024 Hz clock (T8)
trigger-8 0    7   0     7    1   1024 Hz trigger 8
TS-accept 0    7   0    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   0    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   0     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   0    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   0    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   0     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   0    10    1   Beam current, downstream cavity, gain = 10
strobe    0    7   0    29    1   Strobe for S-ray trigger
edtm      0    7   0    16    1   Edtm pulser
helicity  0    7   0    17    1   Helicity
QRT       0    7   0    18    1   QRT
MPS       0    7   0    19    1   MPS
clk104k   0    7   0    21    1   103.7 kHz clock
unser     0    7   0    22    1   Unser Monitor

# More on R-HRS -- detectors
# desc  hel crate slot start nchan  long-description
HAPPEX       0    7   4   0    1    HAPPEX detector
Prex-Quartz  0    7   4   1    1    Prex Quartz detector
Prex-Scint   0    7   4   2    1    Prex Scintillator trigger

S0b          0    7   2   0    1    S0 back PMT
S0f          0    7   2   8    1    S0 front PMT

# ------- Apr 25, 2009
# 4/25 Updated Normalization Scalers for L-HRS and R-HRS
# 3/24 BB Norm scaler not changed (slots 4-8).  Slot 0 removed.  
# Added slots 9,10 (C830 scalers)
# Also: now using 5* norm scalers on R-HRS as was already on L-HRS.

DATE 25 3 2009

# directives for Bigbite
#
xscaler-tabs bbite 0:Triggers 1:norm_pp 2:norm_pm 3:norm_mp 4:norm_mm 5:TSum 6:Scint 7:PSum 8:C830 9:C830
xscaler-layout bbite 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot bbite 0:slot4 1:slot5 2:slot6 3:slot7 4:slot8 5:slot1 6:slot2 7:slot3 8:slot9 9:slot10
xscaler-pagename bbite 0:'BigBite Normalization Scaler ungated -- Triggers '
xscaler-pagename bbite 1:'BigBite Normalization Scaler -- gated by + helicity, + target'
xscaler-pagename bbite 2:'BigBite Normalization Scaler -- gated by + helicity, - target'
xscaler-pagename bbite 3:'BigBite Normalization Scaler -- gated by - helicity, + target'
xscaler-pagename bbite 4:'BigBite Normalization Scaler -- gated by - helicity, - target'
xscaler-pagename bbite 5:'BigBite SIS3800 on far left'
xscaler-pagename bbite 6:'BigBite SIS3800 2nd from left'
xscaler-pagename bbite 7:'BigBite SIS3800 3rd from left'
xscaler-pagename bbite 8:'BigBite C830 2nd from right'
xscaler-pagename bbite 9:'BigBite C830 on far right'
xscaler-server bbite IP:129.57.192.8 port:5037
xscaler-clock bbite slot:4 chan:7 rate:1024
xscaler-currentnorm bbite slot:4 chan:9
# Tying the normalization scaler by target and helicity
target-beam bbite 00:4 pp:5 pm:7 mp:6 mm:8
target-beam evbbite 00:4 pp:5 pm:7 mp:6 mm:8
#
# directives for Left HRS

xscaler-tabs Left 0:s1 1:norm 2:normpp 3:normpm 4:normmp 5:normmm 6:s2m 7:gasC 8:a1 9:misc
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7 8:slot8 9:slot9
xscaler-pagename Left 0:'S1 Scintillator PMTs'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ungated'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by + hel, + tgt'
xscaler-pagename Left 3:'L-HRS Normalization Scaler -- gated by - hel, + tgt'
xscaler-pagename Left 4:'L-HRS Normalization Scaler -- gated by + hel, - tgt'
xscaler-pagename Left 5:'L-HRS Normalization Scaler -- gated by - hel, - tgt'
xscaler-pagename Left 6:'Scint S2m on Left Arm (first Left, then Right PMTs)'
xscaler-pagename Left 7:'Gas Cerenkov on Left Arm'
xscaler-pagename Left 8:'A1 Aerogel (first Left, then Right PMTs)'
xscaler-pagename Left 9:'Miscellaneous including EDTM'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:1 chan:7 rate:1024
# Tying the normalization scaler by target and helicity
target-beam Left 00:1 pp:2 pm:4 mp:3 mm:5
target-beam evleft 00:1 pp:2 pm:4 mp:3 mm:5
#
# directives for Right HRS

xscaler-tabs Right 0:norm 1:normpp 2:normpm 3:normmp 4:normmm 5:s1-s2-LnR 6:s1 7:s2 8:gasC 9:misc
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:4x4 7:4x4 8:4x4 9:4x4
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7 8:slot8 9:slot9 
xscaler-pagename Right 0:'R-HRS Normalization Scaler ungated'
xscaler-pagename Right 1:'R-HRS Normalization Scaler -- gated by + hel, + tgt'
xscaler-pagename Right 2:'R-HRS Normalization Scaler -- gated by - hel, + tgt'
xscaler-pagename Right 3:'R-HRS Normalization Scaler -- gated by + hel, - tgt'
xscaler-pagename Right 4:'R-HRS Normalization Scaler -- gated by - hel, - tgt'
xscaler-pagename Right 5:'Scintillator Left and Right PMTs (1st 6:S1, 17-22:S2)'
xscaler-pagename Right 6:'S1 Scintillator on Right Arm (1st 6:L, 9-14:R)'
xscaler-pagename Right 7:'S2 Scintillator on Right Arm (1st 6:L, 9-14:R)'
xscaler-pagename Right 8:'Gas Cerenkov PMT on Right Arm'
xscaler-pagename Right 9:'Misc 1'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:0 chan:7 rate:1024
# Tying the normalization scaler by target and helicity
target-beam Right 00:0 pp:1 pm:2 mp:3 mm:4
target-beam evright 00:0 pp:1 pm:2 mp:3 mm:4
#
# Although this doesnt have target stuff, it helps with short name assignments
crate-tied EvLeft 0:8 -1:8 1:8
crate-tied EvRight 0:7 -1:7 1:7
crate-tied evbbite 0:9 -1:9 1:9
slot-offset EvLeft 0:0 -1:1 1:-1
slot-offset EvRight 0:0 -1:1 1:-1
slot-offset Left -1:1 1:2 
slot-offset Right -1:1 1:-1 
#
#
# desc  hel crate slot start nchan  long-description
S_1L       0    9   1     7    1    scint_1L
S_2L       0    9   1     8    1    scint_2L
S_3L       0    9   1     9    1    scint_3L
S_4L       0    9   1    10    1    scint_4L
S_5L       0    9   1    11    1    scint_5L
S_6L       0    9   1    12    1    scint_6L
S_7L       0    9   1    13    1    scint_7L
S_8L       0    9   1    14    1    scint_8L
S_9L       0    9   1    15    1    scint_9L
S_10L      0    9   1    16    1    scint_10L
S_11L      0    9   1    17    1    scint_11L
S_12L      0    9   1    18    1    scint_12L
S_13L      0    9   1    19    1    scint_13L
S_1R       0    9   0    26    1    scint_1R
S_2R       0    9   0    27    1    scint_2R
S_3R       0    9   0    28    1    scint_3R
S_4R       0    9   0    29    1    scint_4R
S_5R       0    9   0    30    1    scint_5R
S_6R       0    9   0    31    1    scint_6R
S_7R       0    9   1     0    1    scint_7R
S_8R       0    9   1     1    1    scint_8R
S_9R       0    9   1     2    1    scint_9R
S_10R      0    9   1     3    1    scint_10R
S_11R      0    9   1     4    1    scint_11R
S_12R      0    9   1     5    1    scint_12R
S_13R      0    9   1     6    1    scint_13R

tsum1       0    9   0      0    1    total_sum1
tsum2       0    9   0      1    1    total_sum2
tsum3       0    9   0      2    1    total_sum3
tsum4       0    9   0      3    1    total_sum4
tsum5       0    9   0      4    1    total_sum5
tsum6       0    9   0      5    1    total_sum6
tsum7       0    9   0      6    1    total_sum7
tsum8       0    9   0      7    1    total_sum8
tsum9       0    9   0      8    1    total_sum9
tsum10      0    9   0      9    1    total_sum10
tsum11      0    9   0     10    1    total_sum11
tsum12      0    9   0     11    1    total_sum12
tsum13      0    9   0     12    1    total_sum13
tsum14      0    9   0     13    1    total_sum14
tsum15      0    9   0     14    1    total_sum15
tsum16      0    9   0     15    1    total_sum16
tsum17      0    9   0     16    1    total_sum17
tsum18      0    9   0     17    1    total_sum18
tsum19      0    9   0     18    1    total_sum19
tsum20      0    9   0     19    1    total_sum20
tsum21      0    9   0     20    1    total_sum21
tsum22      0    9   0     21    1    total_sum22
tsum23      0    9   0     22    1    total_sum23
tsum24      0    9   0     23    1    total_sum24
tsum25      0    9   0     24    1    total_sum25
tsum26      0    9   0     25    1    total_sum26

psum1       0    9   1     22    1    preshower_sum1
psum2       0    9   1     23    1    preshower_sum2
psum3       0    9   1     24    1    preshower_sum3
psum4       0    9   1     25    1    preshower_sum4
psum5       0    9   1     26    1    preshower_sum5
psum6       0    9   1     27    1    preshower_sum6
psum7       0    9   1     28    1    preshower_sum7
psum8       0    9   1     29    1    preshower_sum8
psum9       0    9   1     30    1    preshower_sum9
psum10      0    9   1     31    1    preshower_sum10
psum11      0    9   2      0    1    preshower_sum11
psum12      0    9   2      1    1    preshower_sum12
psum13      0    9   2      2    1    preshower_sum13
psum14      0    9   2      3    1    preshower_sum14
psum15      0    9   2      4    1    preshower_sum15
psum16      0    9   2      5    1    preshower_sum16
psum17      0    9   2      6    1    preshower_sum17
psum18      0    9   2      7    1    preshower_sum18
psum19      0    9   2      8    1    preshower_sum19
psum20      0    9   2      9    1    preshower_sum20
psum21      0    9   2     10    1    preshower_sum21
psum22      0    9   2     11    1    preshower_sum22
psum23      0    9   2     12    1    preshower_sum23
psum24      0    9   2     13    1    preshower_sum24
psum25      0    9   2     14    1    preshower_sum25
psum26      0    9   2     15    1    preshower_sum26


T1    0    9   4     0    1    BBite T1
T2    0    9   4     1    1    BBite T2
T3    0    9   4     2    1    BBite T3
T4    0    9   4     3    1    BBite T4
T5    0    9   4     4    1    BBite T5
T6    0    9   4     5    1    BBite T6
T7    0    9   4     6    1    BBite T7
# Empty 0    9   4     6    1    Empty
# T7 moved from 6 to 15 on Feb12
# T7    0    9   4     6    1    BBite T7
T8    0    9   4     7    1    BBite T8
L1A   0    9   4     8    1    BBite L1A
BBretime   0    9   4     9    1    BigBite retiming
F1Trig   0    9   4     10    1    Trigger for the F1TDCs
BBrftime1   0    9   4     11    1  BBrftime1
L1ADelayed   0    9   4     12    1  Delayed L1A signal
BBrftime2   0    9   4     13    1  BBrftime2
FastClock   0    9   4     14    1  FastClock
BBEDTM   0    9   4     15    1  EDTM for BB
# bcm_u1    0    9   4    16    1   Beam current, upstream cavity, gain = 1
# bcm_u3    0    9   4    17    1   Beam current, upstream cavity, gain = 3
# bcm_u10   0    9   4    18    1   Beam current, upstream cavity, gain = 10
# bcm_d1    0    9   4    19    1   Beam current, downstream cavity, gain = 1
# bcm_d3    0    9   4    20    1   Beam current, downstream cavity, gain = 3
# bcm_d10   0    9   4    21    1   Beam current, downstream cavity, gain = 10
# unser     0    9   4    22    1   Unser monitor
# FrontBusy 0    9   4    24    1   Frontend Busy
# Gate792   0    9   4    25    1   c792 Gate
# Gate1881  0    9   4    26    1   1881 Gate

# Also need these two lines, regardless of the above
# Doesn't hurt to have two names corresponding to one channel
clock     0    9   4     7    1    The clock (1024 Hz)
TS-accept 0    9   4     8    1    BBite L1A = TS-accept

# Right HRS:
s1L       0    7   6     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   6     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   5     0    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2L       0    7   7     0    6   S2 Scintillator Left PMTs on Right Arm
s2R       0    7   7     8    6   S2 Scintillator Right PMTs on Right Arm
s2        0    7   5    17    6   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   8     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   0     0    1   trigger 1 on Right Arm
trigger-2 0    7   0     1    1   trigger 2 on Right Arm
trigger-3 0    7   0     2    1   trigger 3 on Right Arm
trigger-4 0    7   0     3    1   trigger 4 on Right Arm
trigger-5 0    7   0     4    1   trigger 5 on Right Arm
trigger-6 0    7   0     5    1   trigger 6 on Right Arm
trigger-7 0    7   0    11    1   trigger 7 on Right Arm
clock     0    7   0     7    1   1024 Hz clock (T8)
trigger-8 0    7   0     7    1   1024 Hz trigger 8
T3_LHRS   0    7   0    20    1   trigger 3 measured on Right Arm
T4_LHRS   0    7   0    25    1   trigger 4 measured on Right Arm
T1_BB     0    7   0    26    1   BB trigger 1 measured on Right Arm
T2_BB     0    7   0    27    1   BB trigger 2 measured on Right Arm
T5_BB     0    7   0    30    1   BB trigger 5 measured on Right Arm
T6_BB     0    7   0    31    1   BB trigger 6 measured on Right Arm
TS-accept 0    7   0    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   0    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   0     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   0    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   0    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   0     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   0    10    1   Beam current, downstream cavity, gain = 10
T9        0    7   0    24    1   Trigger 9 (30 Hz helicity)
strobe    0    7   0    29    1   Strobe for S-ray trigger
edtm      0    7   0    16    1   Edtm pulser
helicity  0    7   0    17    1   Helicity
QRT       0    7   0    18    1   QRT
MPS       0    7   0    19    1   MPS
clk104k   0    7   0    21    1   103.7 kHz clock
unser     0    7   0    22    1   Unser Monitor
clock-2   0    7   0    23    1   1024 Hz clock (T8)
#
# Left HRS:  (a1 in slot 8,  s2m in slot 6 -- Aug 2008)
# desc  hel crate slot start nchan  long-description
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
T1_RHRS   0    8   1    22    1   trigger 1 measured on Left Arm
T2_RHRS   0    8   1    23    1   trigger 2 measured on Left Arm
trigger-1 0    8   1     0    1   trigger 1 on Left Arm (BigBite)
trigger-2 0    8   1     1    1   trigger 2 on Left Arm (BigBite)
trigger-3 0    8   1     2    1   trigger 3 on Left Arm
trigger-4 0    8   1     3    1   trigger 4 on Left Arm
trigger-5 0    8   1     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   1     5    1   trigger 6 
trigger-7 0    8   1     6    1   trigger 7 (had been u3 -- u3 was moved) 
clock     0    8   1     7    1   1024 Hz clock (T8)
trigger-8 0    8   1     7    1   1024 Hz trigger 8
TS-accept 0    8   1    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   1    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   1    16    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   1     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   1    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   1    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   1    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   1    19    1   Strobe for S-ray trigger
T9        0    8   1    24    1   Trigger T9 (30 Hz helicity)
unser     0    8   1    14    1   Unser monitor
edtm      0    8   1    18    1   Edtm pulser
T1_copy      0    8   1    26    1   BB T1 copy
clk104k   0    8   1    28    1   103.7 kHz clock
T2_copy      0    8   1    29    1   BB T2 copy
T5_copy      0    8   1    30    1   BB T5 copy
T6_copy      0    8   1    31    1   BB T6 copy
# s2m       0    8   6     0   32   S2m detector
a1        0    8   8     0   32   Aerogel detector
#
# desc  hel crate slot start nchan  long-description
S2m_0       0    8   6     0    1    S2m chan 0
S2m_1       0    8   6     1    1    S2m chan 1
S2m_2       0    8   6     2    1    S2m chan 2



#
# ------- Mar 24, 2009
# 3/24 BB Norm scaler not changed (slots 4-8).  Slot 0 removed.  
# Added slots 9,10 (C830 scalers)
# Also: now using 5* norm scalers on R-HRS as was already on L-HRS.

DATE 24 3 2009

# directives for Bigbite
#
xscaler-tabs bbite 0:Triggers 1:norm_pp 2:norm_pm 3:norm_mp 4:norm_mm 5:TSum 6:Scint 7:PSum 8:C830 9:C830
xscaler-layout bbite 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot bbite 0:slot4 1:slot5 2:slot6 3:slot7 4:slot8 5:slot1 6:slot2 7:slot3 8:slot9 9:slot10
xscaler-pagename bbite 0:'BigBite Normalization Scaler ungated -- Triggers '
xscaler-pagename bbite 1:'BigBite Normalization Scaler -- gated by + helicity, + target'
xscaler-pagename bbite 2:'BigBite Normalization Scaler -- gated by + helicity, - target'
xscaler-pagename bbite 3:'BigBite Normalization Scaler -- gated by - helicity, + target'
xscaler-pagename bbite 4:'BigBite Normalization Scaler -- gated by - helicity, - target'
xscaler-pagename bbite 5:'BigBite SIS3800 on far left'
xscaler-pagename bbite 6:'BigBite SIS3800 2nd from left'
xscaler-pagename bbite 7:'BigBite SIS3800 3rd from left'
xscaler-pagename bbite 8:'BigBite C830 2nd from right'
xscaler-pagename bbite 9:'BigBite C830 on far right'
xscaler-server bbite IP:129.57.192.8 port:5037
xscaler-clock bbite slot:4 chan:7 rate:1024
xscaler-currentnorm bbite slot:4 chan:9
# Tying the normalization scaler by target and helicity
target-beam bbite 00:4 pp:5 pm:7 mp:6 mm:8
target-beam evbbite 00:4 pp:5 pm:7 mp:6 mm:8
#
# directives for Left HRS

xscaler-tabs Left 0:s1 1:norm 2:normpp 3:normpm 4:normmp 5:normmm 6:s2m 7:gasC 8:a1 9:misc
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7 8:slot8 9:slot9
xscaler-pagename Left 0:'S1 Scintillator PMTs'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ungated'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by + hel, + tgt'
xscaler-pagename Left 3:'L-HRS Normalization Scaler -- gated by - hel, + tgt'
xscaler-pagename Left 4:'L-HRS Normalization Scaler -- gated by + hel, - tgt'
xscaler-pagename Left 5:'L-HRS Normalization Scaler -- gated by - hel, - tgt'
xscaler-pagename Left 6:'Scint S2m on Left Arm (first Left, then Right PMTs)'
xscaler-pagename Left 7:'Gas Cerenkov on Left Arm'
xscaler-pagename Left 8:'A1 Aerogel (first Left, then Right PMTs)'
xscaler-pagename Left 9:'Miscellaneous including EDTM'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:1 chan:7 rate:1024
# Tying the normalization scaler by target and helicity
target-beam Left 00:1 pp:2 pm:4 mp:3 mm:5
target-beam evleft 00:1 pp:2 pm:4 mp:3 mm:5
#
# directives for Right HRS

xscaler-tabs Right 0:norm 1:normpp 2:normpm 3:normmp 4:normmm 5:s1-s2-LnR 6:s1 7:s2 8:gasC 9:misc
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:4x4 7:4x4 8:4x4 9:4x4
xscaler-pageslot Right 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7 8:slot8 9:slot9 
xscaler-pagename Right 0:'R-HRS Normalization Scaler ungated'
xscaler-pagename Right 1:'R-HRS Normalization Scaler -- gated by + hel, + tgt'
xscaler-pagename Right 2:'R-HRS Normalization Scaler -- gated by - hel, + tgt'
xscaler-pagename Right 3:'R-HRS Normalization Scaler -- gated by + hel, - tgt'
xscaler-pagename Right 4:'R-HRS Normalization Scaler -- gated by - hel, - tgt'
xscaler-pagename Right 5:'Scintillator Left and Right PMTs (1st 6:S1, 17-22:S2)'
xscaler-pagename Right 6:'S1 Scintillator on Right Arm (1st 6:L, 9-14:R)'
xscaler-pagename Right 7:'S2 Scintillator on Right Arm (1st 6:L, 9-14:R)'
xscaler-pagename Right 8:'Gas Cerenkov PMT on Right Arm'
xscaler-pagename Right 9:'Misc 1'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:0 chan:7 rate:1024
# Tying the normalization scaler by target and helicity
target-beam Right 00:0 pp:1 pm:2 mp:3 mm:4
target-beam evright 00:0 pp:1 pm:2 mp:3 mm:4
#
# Although this doesnt have target stuff, it helps with short name assignments
crate-tied EvLeft 0:8 -1:8 1:8
crate-tied EvRight 0:7 -1:7 1:7
crate-tied evbbite 0:9 -1:9 1:9
slot-offset EvLeft 0:0 -1:1 1:-1
slot-offset EvRight 0:0 -1:1 1:-1
slot-offset Left -1:1 1:2 
slot-offset Right -1:1 1:-1 
#
#
# desc  hel crate slot start nchan  long-description
S_1L       0    9   1     7    1    scint_1L
S_2L       0    9   1     8    1    scint_2L
S_3L       0    9   1     9    1    scint_3L
S_4L       0    9   1    10    1    scint_4L
S_5L       0    9   1    11    1    scint_5L
S_6L       0    9   1    12    1    scint_6L
S_7L       0    9   1    13    1    scint_7L
S_8L       0    9   1    14    1    scint_8L
S_9L       0    9   1    15    1    scint_9L
S_10L      0    9   1    16    1    scint_10L
S_11L      0    9   1    17    1    scint_11L
S_12L      0    9   1    18    1    scint_12L
S_13L      0    9   1    19    1    scint_13L
S_1R       0    9   0    26    1    scint_1R
S_2R       0    9   0    27    1    scint_2R
S_3R       0    9   0    28    1    scint_3R
S_4R       0    9   0    29    1    scint_4R
S_5R       0    9   0    30    1    scint_5R
S_6R       0    9   0    31    1    scint_6R
S_7R       0    9   1     0    1    scint_7R
S_8R       0    9   1     1    1    scint_8R
S_9R       0    9   1     2    1    scint_9R
S_10R      0    9   1     3    1    scint_10R
S_11R      0    9   1     4    1    scint_11R
S_12R      0    9   1     5    1    scint_12R
S_13R      0    9   1     6    1    scint_13R

tsum1       0    9   0      0    1    total_sum1
tsum2       0    9   0      1    1    total_sum2
tsum3       0    9   0      2    1    total_sum3
tsum4       0    9   0      3    1    total_sum4
tsum5       0    9   0      4    1    total_sum5
tsum6       0    9   0      5    1    total_sum6
tsum7       0    9   0      6    1    total_sum7
tsum8       0    9   0      7    1    total_sum8
tsum9       0    9   0      8    1    total_sum9
tsum10      0    9   0      9    1    total_sum10
tsum11      0    9   0     10    1    total_sum11
tsum12      0    9   0     11    1    total_sum12
tsum13      0    9   0     12    1    total_sum13
tsum14      0    9   0     13    1    total_sum14
tsum15      0    9   0     14    1    total_sum15
tsum16      0    9   0     15    1    total_sum16
tsum17      0    9   0     16    1    total_sum17
tsum18      0    9   0     17    1    total_sum18
tsum19      0    9   0     18    1    total_sum19
tsum20      0    9   0     19    1    total_sum20
tsum21      0    9   0     20    1    total_sum21
tsum22      0    9   0     21    1    total_sum22
tsum23      0    9   0     22    1    total_sum23
tsum24      0    9   0     23    1    total_sum24
tsum25      0    9   0     24    1    total_sum25
tsum26      0    9   0     25    1    total_sum26

psum1       0    9   1     22    1    preshower_sum1
psum2       0    9   1     23    1    preshower_sum2
psum3       0    9   1     24    1    preshower_sum3
psum4       0    9   1     25    1    preshower_sum4
psum5       0    9   1     26    1    preshower_sum5
psum6       0    9   1     27    1    preshower_sum6
psum7       0    9   1     28    1    preshower_sum7
psum8       0    9   1     29    1    preshower_sum8
psum9       0    9   1     30    1    preshower_sum9
psum10      0    9   1     31    1    preshower_sum10
psum11      0    9   2      0    1    preshower_sum11
psum12      0    9   2      1    1    preshower_sum12
psum13      0    9   2      2    1    preshower_sum13
psum14      0    9   2      3    1    preshower_sum14
psum15      0    9   2      4    1    preshower_sum15
psum16      0    9   2      5    1    preshower_sum16
psum17      0    9   2      6    1    preshower_sum17
psum18      0    9   2      7    1    preshower_sum18
psum19      0    9   2      8    1    preshower_sum19
psum20      0    9   2      9    1    preshower_sum20
psum21      0    9   2     10    1    preshower_sum21
psum22      0    9   2     11    1    preshower_sum22
psum23      0    9   2     12    1    preshower_sum23
psum24      0    9   2     13    1    preshower_sum24
psum25      0    9   2     14    1    preshower_sum25
psum26      0    9   2     15    1    preshower_sum26


T1    0    9   4     0    1    BBite T1
T2    0    9   4     1    1    BBite T2
T3    0    9   4     2    1    BBite T3
T4    0    9   4     3    1    BBite T4
T5    0    9   4     4    1    BBite T5
T6    0    9   4     5    1    BBite T6
T7    0    9   4    15    1    BBite T7
Empty 0    9   4     6    1    Empty
# T7 moved from 6 to 15 on Feb12
#T7    0    9   4     6    1    BBite T7
T8    0    9   4     7    1    BBite T8
L1A   0    9   4     8    1    BBite L1A
current   0    9   4     9    1    Current to normalize by
EDTM   0    9   4     10    1    EDTM Master 
clk103.7k   0    9   4     11    1  103.7 kHz clock
bcm_u1    0    9   4    16    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    9   4    17    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    9   4    18    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    9   4    19    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    9   4    20    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    9   4    21    1   Beam current, downstream cavity, gain = 10
unser     0    9   4    22    1   Unser monitor
FrontBusy 0    9   4    24    1   Frontend Busy
Gate792   0    9   4    25    1   c792 Gate
Gate1881  0    9   4    26    1   1881 Gate

# Also need these two lines, regardless of the above
# Doesn't hurt to have two names corresponding to one channel
clock     0    9   4     7    1    The clock (1024 Hz)
TS-accept 0    9   4     8    1    BBite L1A = TS-accept

# Right HRS:
s1L       0    7   6     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   6     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   5     0    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2L       0    7   7     0    6   S2 Scintillator Left PMTs on Right Arm
s2R       0    7   7     8    6   S2 Scintillator Right PMTs on Right Arm
s2        0    7   5    17    6   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   8     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   0     0    1   trigger 1 on Right Arm
trigger-2 0    7   0     1    1   trigger 2 on Right Arm
T3_LHRS   0    7   0     2    1   trigger 3 measured on Right Arm
trigger-3 0    7   0     2    1   trigger 3 measured on Right Arm
T4_LHRS   0    7   0     3    1   trigger 4 measured on Right Arm
trigger-4 0    7   0     3    1   trigger 4 measured on Right Arm
trigger-5 0    7   0     4    1   trigger 5 on Right Arm
trigger-6 0    7   0     5    1   trigger 6 on Right Arm
trigger-7 0    7   0    11    1   trigger 7 on Right Arm
clock     0    7   0     7    1   1024 Hz clock (T8)
trigger-8 0    7   0     7    1   1024 Hz trigger 8
unser     0    7   0     8    1   Unser Monitor
TS-accept 0    7   0    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   0    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   0     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   0    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   0    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   0     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   0    10    1   Beam current, downstream cavity, gain = 10
T9        0    7   0    24    1   Trigger 9 (30 Hz helicity)
strobe    0    7   0    29    1   Strobe for S-ray trigger
edtm      0    7   0    16    1   Edtm pulser
helicity  0    7   0    17    1   Helicity
QRT       0    7   0    18    1   QRT
MPS       0    7   0    19    1   MPS
clk104k   0    7   0    21    1   103.7 kHz clock
clock-2   0    7   0    23    1   1024 Hz clock (T8)
#
# Left HRS:  (a1 in slot 8,  s2m in slot 6 -- Aug 2008)
# desc  hel crate slot start nchan  long-description
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
T1_RHRS   0    8   1     0    1   trigger 1 measured on Left Arm
T2_RHRS   0    8   1     1    1   trigger 2 measured on Left Arm
trigger-1 0    8   1     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   1     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   1     2    1   trigger 3 on Left Arm
trigger-4 0    8   1     3    1   trigger 4 on Left Arm
trigger-5 0    8   1     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   1     5    1   trigger 6 
trigger-7 0    8   1     6    1   trigger 7 (had been u3 -- u3 was moved) 
clock     0    8   1     7    1   1024 Hz clock (T8)
trigger-8 0    8   1     7    1   1024 Hz trigger 8
TS-accept 0    8   1    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   1    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   1    16    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   1     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   1    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   1    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   1    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   1    19    1   Strobe for S-ray trigger
T9        0    8   1    24    1   Trigger T9 (30 Hz helicity)
unser     0    8   1    14    1   Unser monitor
edtm      0    8   1    18    1   Edtm pulser
clk104k   0    8   1    28    1   103.7 kHz clock
# s2m       0    8   6     0   32   S2m detector
a1        0    8   8     0   32   Aerogel detector
#
# desc  hel crate slot start nchan  long-description
S2m_0       0    8   6     0    1    S2m chan 0
S2m_1       0    8   6     1    1    S2m chan 1
S2m_2       0    8   6     2    1    S2m chan 2


# ------- Dec 28, 2008 (changes to R-HRS only)
DATE 28 12 2008
# directives for Bigbite
#
xscaler-tabs bbite 0:Triggers 1:norm_pp 2:norm_pm 3:norm_mp 4:norm_mm 5:TSum 6:Scint 7:PSum  
xscaler-layout bbite 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4
xscaler-pageslot bbite 0:slot4 1:slot5 2:slot6 3:slot7 4:slot8 5:slot0 6:slot1 7:slot2
xscaler-pagename bbite 0:'BigBite Normalization Scaler ungated -- Triggers '
xscaler-pagename bbite 1:'BigBite Normalization Scaler -- gated by + helicity, + target'
xscaler-pagename bbite 2:'BigBite Normalization Scaler -- gated by + helicity, - target'
xscaler-pagename bbite 3:'BigBite Normalization Scaler -- gated by - helicity, + target'
xscaler-pagename bbite 4:'BigBite Normalization Scaler -- gated by - helicity, - target'
xscaler-pagename bbite 5:'BigBite Total sum and Scintillator'
xscaler-pagename bbite 6:'BigBite Scintillator and Preshower sum'
xscaler-pagename bbite 7:'BigBite Preshower sum
xscaler-server bbite IP:129.57.192.8 port:5037
xscaler-clock bbite slot:4 chan:7 rate:1024
xscaler-currentnorm bbite slot:4 chan:9
# Tying the normalization scaler by target and helicity
target-beam bbite 00:4 pp:5 pm:7 mp:6 mm:8
target-beam evbbite 00:4 pp:5 pm:7 mp:6 mm:8
#
# directives for Left HRS
xscaler-tabs Left 0:s1 1:norm 2:normpp 3:normpm 4:normmp 5:normmm 6:s2m 7:gasC 8:a1 9:misc
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7 8:slot8 9:slot9
xscaler-pagename Left 0:'S1 Scintillator PMTs'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ungated'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by + hel, + tgt'
xscaler-pagename Left 3:'L-HRS Normalization Scaler -- gated by + hel, - tgt'
xscaler-pagename Left 4:'L-HRS Normalization Scaler -- gated by - hel, + tgt'
xscaler-pagename Left 5:'L-HRS Normalization Scaler -- gated by - hel, - tgt'
xscaler-pagename Left 6:'Scint S2m on Left Arm (first Left, then Right PMTs)'
xscaler-pagename Left 7:'Gas Cerenkov on Left Arm'
xscaler-pagename Left 8:'A1 Aerogel (first Left, then Right PMTs)'
xscaler-pagename Left 9:'Miscellaneous including EDTM'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:1 chan:7 rate:1024
# Tying the normalization scaler by target and helicity
target-beam Left 00:1 pp:2 pm:4 mp:3 mm:5
target-beam evleft 00:1 pp:2 pm:4 mp:3 mm:5
#
# directives for Right HRS
xscaler-tabs Right 0:norm 1:PVDIS 2:s1 3:s2LR 4:s2 5:gasC 6:misc1 
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:4x4 4:4x4 5:4x4 6:4x4 
xscaler-pageslot Right 0:slot8 1:slot1 2:slot0 3:slot2 4:slot3 5:slot4 6:slot5 
xscaler-pagename Right 0:'R-HRS Normalization Scaler'
xscaler-pagename Right 1:'PVDIS triggers'
xscaler-pagename Right 2:'S1 Scintillator on Right Arm (1st 6:L, 9-14:R, 17th-22:L+R)'
xscaler-pagename Right 3:'S2 Scintillator on Right Arm (1st 6:L, 9-14:R)'
xscaler-pagename Right 4:'S2 Scintillator on Right Arm (1st 6:L+R)'
xscaler-pagename Right 5:'Gas Cerenkov PMT on Right Arm'
xscaler-pagename Right 6:'Misc 1'
xscaler-pagename Right 7:'Misc 2'

xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:8 chan:7 rate:1024
target-beam Right 00:8 pp:-1 pm:-1 mp:-1 mm:-1
#
# Although this doesnt have target stuff, it helps with short name assignments
crate-tied EvLeft 0:8 -1:8 1:8
crate-tied EvRight 0:7 -1:7 1:7
crate-tied evbbite 0:9 -1:9 1:9
slot-offset EvLeft 0:0 -1:1 1:-1
slot-offset EvRight 0:0 -1:1 1:-1
slot-offset Left -1:1 1:2 
slot-offset Right -1:1 1:-1 
#
#
# desc  hel crate slot start nchan  long-description
S_1L       0    9   1     7    1    scint_1L
S_2L       0    9   1     8    1    scint_2L
S_3L       0    9   1     9    1    scint_3L
S_4L       0    9   1    10    1    scint_4L
S_5L       0    9   1    11    1    scint_5L
S_6L       0    9   1    12    1    scint_6L
S_7L       0    9   1    13    1    scint_7L
S_8L       0    9   1    14    1    scint_8L
S_9L       0    9   1    15    1    scint_9L
S_10L      0    9   1    16    1    scint_10L
S_11L      0    9   1    17    1    scint_11L
S_12L      0    9   1    18    1    scint_12L
S_13L      0    9   1    19    1    scint_13L
S_1R       0    9   0    26    1    scint_1R
S_2R       0    9   0    27    1    scint_2R
S_3R       0    9   0    28    1    scint_3R
S_4R       0    9   0    29    1    scint_4R
S_5R       0    9   0    30    1    scint_5R
S_6R       0    9   0    31    1    scint_6R
S_7R       0    9   1     0    1    scint_7R
S_8R       0    9   1     1    1    scint_8R
S_9R       0    9   1     2    1    scint_9R
S_10R      0    9   1     3    1    scint_10R
S_11R      0    9   1     4    1    scint_11R
S_12R      0    9   1     5    1    scint_12R
S_13R      0    9   1     6    1    scint_13R

tsum1       0    9   0      0    1    total_sum1
tsum2       0    9   0      1    1    total_sum2
tsum3       0    9   0      2    1    total_sum3
tsum4       0    9   0      3    1    total_sum4
tsum5       0    9   0      4    1    total_sum5
tsum6       0    9   0      5    1    total_sum6
tsum7       0    9   0      6    1    total_sum7
tsum8       0    9   0      7    1    total_sum8
tsum9       0    9   0      8    1    total_sum9
tsum10      0    9   0      9    1    total_sum10
tsum11      0    9   0     10    1    total_sum11
tsum12      0    9   0     11    1    total_sum12
tsum13      0    9   0     12    1    total_sum13
tsum14      0    9   0     13    1    total_sum14
tsum15      0    9   0     14    1    total_sum15
tsum16      0    9   0     15    1    total_sum16
tsum17      0    9   0     16    1    total_sum17
tsum18      0    9   0     17    1    total_sum18
tsum19      0    9   0     18    1    total_sum19
tsum20      0    9   0     19    1    total_sum20
tsum21      0    9   0     20    1    total_sum21
tsum22      0    9   0     21    1    total_sum22
tsum23      0    9   0     22    1    total_sum23
tsum24      0    9   0     23    1    total_sum24
tsum25      0    9   0     24    1    total_sum25
tsum26      0    9   0     25    1    total_sum26

psum1       0    9   1     22    1    preshower_sum1
psum2       0    9   1     23    1    preshower_sum2
psum3       0    9   1     24    1    preshower_sum3
psum4       0    9   1     25    1    preshower_sum4
psum5       0    9   1     26    1    preshower_sum5
psum6       0    9   1     27    1    preshower_sum6
psum7       0    9   1     28    1    preshower_sum7
psum8       0    9   1     29    1    preshower_sum8
psum9       0    9   1     30    1    preshower_sum9
psum10      0    9   1     31    1    preshower_sum10
psum11      0    9   2      0    1    preshower_sum11
psum12      0    9   2      1    1    preshower_sum12
psum13      0    9   2      2    1    preshower_sum13
psum14      0    9   2      3    1    preshower_sum14
psum15      0    9   2      4    1    preshower_sum15
psum16      0    9   2      5    1    preshower_sum16
psum17      0    9   2      6    1    preshower_sum17
psum18      0    9   2      7    1    preshower_sum18
psum19      0    9   2      8    1    preshower_sum19
psum20      0    9   2      9    1    preshower_sum20
psum21      0    9   2     10    1    preshower_sum21
psum22      0    9   2     11    1    preshower_sum22
psum23      0    9   2     12    1    preshower_sum23
psum24      0    9   2     13    1    preshower_sum24
psum25      0    9   2     14    1    preshower_sum25
psum26      0    9   2     15    1    preshower_sum26


T1    0    9   4     0    1    BBite T1
T2    0    9   4     1    1    BBite T2
T3    0    9   4     2    1    BBite T3
T4    0    9   4     3    1    BBite T4
T5    0    9   4     4    1    BBite T5
T6    0    9   4     5    1    BBite T6
T7    0    9   4    15    1    BBite T7
Empty 0    9   4     6    1    Empty
# T7 moved from 6 to 15 on Feb12
#T7    0    9   4     6    1    BBite T7
T8    0    9   4     7    1    BBite T8
L1A   0    9   4     8    1    BBite L1A
current   0    9   4     9    1    Current to normalize by
EDTM   0    9   4     10    1    EDTM Master 
clk103.7k   0    9   4     11    1  103.7 kHz clock
bcm_u1    0    9   4    16    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    9   4    17    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    9   4    18    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    9   4    19    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    9   4    20    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    9   4    21    1   Beam current, downstream cavity, gain = 10
unser     0    9   4    22    1   Unser monitor
FrontBusy 0    9   4    24    1   Frontend Busy
Gate792   0    9   4    25    1   c792 Gate
Gate1881  0    9   4    26    1   1881 Gate

# Also need these two lines, regardless of the above
# Doesn't hurt to have two names corresponding to one channel
clock     0    9   4     7    1    The clock (1024 Hz)
TS-accept 0    9   4     8    1    BBite L1A = TS-accept

# Right HRS:
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   0     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   0    16    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2L       0    7   2     0    6   S2 Scintillator Left PMTs on Right Arm
s2R       0    7   2    8    6   S2 Scintillator Right PMTs on Right Arm
s2        0    7   3     0    6   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   4     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
trigger-3 0    7   8     2    1   trigger 3 on Right Arm
trigger-4 0    7   8     3    1   trigger 4 on Right Arm
trigger-5 0    7   8     4    1   trigger 5 on Right Arm
trigger-6 0    7   8     5    1   trigger 6 on Right Arm
trigger-7 0    7   8    11    1   trigger  on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
T9        0    7   8    24    1   Trigger 9 (30 Hz helicity)
strobe    0    7   8    19    1   Strobe for S-ray trigger
edtm      0    7   5     8    1   Edtm pulser
#
# Left HRS:  (a1 in slot 8,  s2m in slot 6 -- Aug 2008)
# desc  hel crate slot start nchan  long-description
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
trigger-1 0    8   1     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   1     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   1     2    1   trigger 3 on Left Arm
trigger-4 0    8   1     3    1   trigger 4 on Left Arm
trigger-5 0    8   1     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   1     5    1   trigger 6 
trigger-7 0    8   1     6    1   trigger 7 (had been u3 -- u3 was moved) 
clock     0    8   1     7    1   1024 Hz clock (T8)
trigger-8 0    8   1     7    1   1024 Hz trigger 8
TS-accept 0    8   1    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   1    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   1    16    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   1     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   1    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   1    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   1    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   1    19    1   Strobe for S-ray trigger
T9        0    8   1    24    1   Trigger T9 (30 Hz helicity)
unser     0    8   1    14    1   Unser monitor
edtm      0    8   1    18    1   Edtm pulser
clk104k   0    8   1    28    1   103.7 kHz clock
# s2m       0    8   6     0   32   S2m detector
a1        0    8   8     0   32   Aerogel detector
#
# desc  hel crate slot start nchan  long-description
S2m_0       0    8   6     0    1    S2m chan 0
S2m_1       0    8   6     1    1    S2m chan 1
S2m_2       0    8   6     2    1    S2m chan 2

# ------- Aug 26, 2008
DATE 26 8 2008
# directives for Bigbite
#
xscaler-tabs bbite 0:Triggers 1:norm_pp 2:norm_pm 3:norm_mp 4:norm_mm 5:TSum 6:Scint 7:PSum  
xscaler-layout bbite 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4
xscaler-pageslot bbite 0:slot4 1:slot5 2:slot6 3:slot7 4:slot8 5:slot0 6:slot1 7:slot2
xscaler-pagename bbite 0:'BigBite Normalization Scaler ungated -- Triggers '
xscaler-pagename bbite 1:'BigBite Normalization Scaler -- gated by + helicity, + target'
xscaler-pagename bbite 2:'BigBite Normalization Scaler -- gated by + helicity, - target'
xscaler-pagename bbite 3:'BigBite Normalization Scaler -- gated by - helicity, + target'
xscaler-pagename bbite 4:'BigBite Normalization Scaler -- gated by - helicity, - target'
xscaler-pagename bbite 5:'BigBite Total sum and Scintillator'
xscaler-pagename bbite 6:'BigBite Scintillator and Preshower sum'
xscaler-pagename bbite 7:'BigBite Preshower sum
xscaler-server bbite IP:129.57.192.8 port:5037
xscaler-clock bbite slot:4 chan:7 rate:1024
xscaler-currentnorm bbite slot:4 chan:9
# Tying the normalization scaler by target and helicity
target-beam bbite 00:4 pp:5 pm:7 mp:6 mm:8
target-beam evbbite 00:4 pp:5 pm:7 mp:6 mm:8
#
# directives for Left HRS
xscaler-tabs Left 0:s1 1:norm 2:normpp 3:normpm 4:normmp 5:normmm 6:s2m 7:gasC 8:a1 9:misc
xscaler-layout Left 0:4x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot Left 0:slot0 1:slot1 2:slot2 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7 8:slot8 9:slot9
xscaler-pagename Left 0:'S1 Scintillator PMTs'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ungated'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by + hel, + tgt'
xscaler-pagename Left 3:'L-HRS Normalization Scaler -- gated by + hel, - tgt'
xscaler-pagename Left 4:'L-HRS Normalization Scaler -- gated by - hel, + tgt'
xscaler-pagename Left 5:'L-HRS Normalization Scaler -- gated by - hel, - tgt'
xscaler-pagename Left 6:'Scint S2m on Left Arm (first Left, then Right PMTs)'
xscaler-pagename Left 7:'Gas Cerenkov on Left Arm'
xscaler-pagename Left 8:'A1 Aerogel (first Left, then Right PMTs)'
xscaler-pagename Left 9:'Miscellaneous including EDTM'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:1 chan:7 rate:1024
# Tying the normalization scaler by target and helicity
target-beam Left 00:1 pp:2 pm:4 mp:3 mm:5
target-beam evleft 00:1 pp:2 pm:4 mp:3 mm:5
#
# directives for Right HRS
xscaler-tabs Right 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:gasC 6:misc1 7:misc2 8:misc3 9:edtm
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:4x4 6:4x4 7:4x4 8:4x4 9:4x4 
xscaler-pageslot Right 0:slot8 1:slot7 2:slot9 3:s1 4:s2 5:gasC 6:slot3 7:slot4 8:slot5 9:slot6 
xscaler-pagename Right 0:'R-HRS Normalization Scaler (NOT gated by helicity)'
xscaler-pagename Right 1:'R-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Right 2:'R-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Right 3:'S1 Scintillator on Right Arm (1st 6:L, 9-14:R, 17th-22:L+R)'
xscaler-pagename Right 4:'S2 Scintillator on Right Arm (1st 6:L, 9-14:R, 17th-22:L+R)'
xscaler-pagename Right 5:'Gas Cerenkov PMT on Right Arm'
xscaler-pagename Right 6:'Misc 1'
xscaler-pagename Right 7:'Misc 2'
xscaler-pagename Right 8:'Misc 3'
xscaler-pagename Right 9:'Electronics Deadtime Measurements'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:8 chan:7 rate:1024
#
# Although this doesnt have target stuff, it helps with short name assignments
crate-tied EvLeft 0:8 -1:8 1:8
crate-tied EvRight 0:7 -1:7 1:7
crate-tied evbbite 0:9 -1:9 1:9
slot-offset EvLeft 0:0 -1:1 1:-1
slot-offset EvRight 0:0 -1:1 1:-1
slot-offset Left -1:1 1:2 
slot-offset Right -1:1 1:-1 
#
#
# desc  hel crate slot start nchan  long-description
S_1L       0    9   1     7    1    scint_1L
S_2L       0    9   1     8    1    scint_2L
S_3L       0    9   1     9    1    scint_3L
S_4L       0    9   1    10    1    scint_4L
S_5L       0    9   1    11    1    scint_5L
S_6L       0    9   1    12    1    scint_6L
S_7L       0    9   1    13    1    scint_7L
S_8L       0    9   1    14    1    scint_8L
S_9L       0    9   1    15    1    scint_9L
S_10L      0    9   1    16    1    scint_10L
S_11L      0    9   1    17    1    scint_11L
S_12L      0    9   1    18    1    scint_12L
S_13L      0    9   1    19    1    scint_13L
S_1R       0    9   0    26    1    scint_1R
S_2R       0    9   0    27    1    scint_2R
S_3R       0    9   0    28    1    scint_3R
S_4R       0    9   0    29    1    scint_4R
S_5R       0    9   0    30    1    scint_5R
S_6R       0    9   0    31    1    scint_6R
S_7R       0    9   1     0    1    scint_7R
S_8R       0    9   1     1    1    scint_8R
S_9R       0    9   1     2    1    scint_9R
S_10R      0    9   1     3    1    scint_10R
S_11R      0    9   1     4    1    scint_11R
S_12R      0    9   1     5    1    scint_12R
S_13R      0    9   1     6    1    scint_13R

tsum1       0    9   0      0    1    total_sum1
tsum2       0    9   0      1    1    total_sum2
tsum3       0    9   0      2    1    total_sum3
tsum4       0    9   0      3    1    total_sum4
tsum5       0    9   0      4    1    total_sum5
tsum6       0    9   0      5    1    total_sum6
tsum7       0    9   0      6    1    total_sum7
tsum8       0    9   0      7    1    total_sum8
tsum9       0    9   0      8    1    total_sum9
tsum10      0    9   0      9    1    total_sum10
tsum11      0    9   0     10    1    total_sum11
tsum12      0    9   0     11    1    total_sum12
tsum13      0    9   0     12    1    total_sum13
tsum14      0    9   0     13    1    total_sum14
tsum15      0    9   0     14    1    total_sum15
tsum16      0    9   0     15    1    total_sum16
tsum17      0    9   0     16    1    total_sum17
tsum18      0    9   0     17    1    total_sum18
tsum19      0    9   0     18    1    total_sum19
tsum20      0    9   0     19    1    total_sum20
tsum21      0    9   0     20    1    total_sum21
tsum22      0    9   0     21    1    total_sum22
tsum23      0    9   0     22    1    total_sum23
tsum24      0    9   0     23    1    total_sum24
tsum25      0    9   0     24    1    total_sum25
tsum26      0    9   0     25    1    total_sum26

psum1       0    9   1     22    1    preshower_sum1
psum2       0    9   1     23    1    preshower_sum2
psum3       0    9   1     24    1    preshower_sum3
psum4       0    9   1     25    1    preshower_sum4
psum5       0    9   1     26    1    preshower_sum5
psum6       0    9   1     27    1    preshower_sum6
psum7       0    9   1     28    1    preshower_sum7
psum8       0    9   1     29    1    preshower_sum8
psum9       0    9   1     30    1    preshower_sum9
psum10      0    9   1     31    1    preshower_sum10
psum11      0    9   2      0    1    preshower_sum11
psum12      0    9   2      1    1    preshower_sum12
psum13      0    9   2      2    1    preshower_sum13
psum14      0    9   2      3    1    preshower_sum14
psum15      0    9   2      4    1    preshower_sum15
psum16      0    9   2      5    1    preshower_sum16
psum17      0    9   2      6    1    preshower_sum17
psum18      0    9   2      7    1    preshower_sum18
psum19      0    9   2      8    1    preshower_sum19
psum20      0    9   2      9    1    preshower_sum20
psum21      0    9   2     10    1    preshower_sum21
psum22      0    9   2     11    1    preshower_sum22
psum23      0    9   2     12    1    preshower_sum23
psum24      0    9   2     13    1    preshower_sum24
psum25      0    9   2     14    1    preshower_sum25
psum26      0    9   2     15    1    preshower_sum26


T1    0    9   4     0    1    BBite T1
T2    0    9   4     1    1    BBite T2
T3    0    9   4     2    1    BBite T3
T4    0    9   4     3    1    BBite T4
T5    0    9   4     4    1    BBite T5
T6    0    9   4     5    1    BBite T6
T7    0    9   4     6    1    BBite T7
T8    0    9   4     7    1    BBite T8
L1A   0    9   4     8    1    BBite L1A
current   0    9   4     9    1    Current to normalize by
EDTM   0    9   4     10    1    EDTM Master 
clk103.7k   0    9   4     11    1  103.7 kHz clock
bcm_u1    0    9   4    16    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    9   4    17    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    9   4    18    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    9   4    19    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    9   4    20    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    9   4    21    1   Beam current, downstream cavity, gain = 10
unser     0    9   4    22    1   Unser monitor

# Also need these two lines, regardless of the above
# Doesn't hurt to have two names corresponding to one channel
clock     0    9   4     7    1    The clock (1024 Hz)
TS-accept 0    9   4     8    1    BBite L1A = TS-accept

# Right HRS:
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   0     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   0    16    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2L       0    7   1     0    6   S2 Scintillator Left PMTs on Right Arm
s2R       0    7   1     8    6   S2 Scintillator Right PMTs on Right Arm
s2        0    7   1    16    6   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   2     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
trigger-3 0    7   8     2    1   trigger 3 on Right Arm
trigger-4 0    7   8     3    1   trigger 4 on Right Arm
trigger-5 0    7   8     4    1   trigger 5 on Right Arm
trigger-6 0    7   8     5    1   trigger 6 on Right Arm
trigger-7 0    7   8    11    1   trigger  on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
T9        0    7   8    24    1   Trigger 9 (30 Hz helicity)
strobe    0    7   8    19    1   Strobe for S-ray trigger
edtm      0    7   9     8    1   Edtm pulser
#
# Left HRS:  (a1 in slot 8,  s2m in slot 6 -- Aug 2008)
# desc  hel crate slot start nchan  long-description
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
trigger-1 0    8   1     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   1     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   1     2    1   trigger 3 on Left Arm
trigger-4 0    8   1     3    1   trigger 4 on Left Arm
trigger-5 0    8   1     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   1     5    1   trigger 6 
trigger-7 0    8   1     6    1   trigger 7 (had been u3 -- u3 was moved) 
clock     0    8   1     7    1   1024 Hz clock (T8)
trigger-8 0    8   1     7    1   1024 Hz trigger 8
TS-accept 0    8   1    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   1    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   1    16    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   1     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   1    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   1    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   1    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   1    19    1   Strobe for S-ray trigger
T9        0    8   1    24    1   Trigger T9 (30 Hz helicity)
unser     0    8   1    14    1   Unser monitor
edtm      0    8   1    18    1   Edtm pulser
clk104k   0    8   1    28    1   103.7 kHz clock
# s2m       0    8   6     0   32   S2m detector
a1        0    8   8     0   32   Aerogel detector
#
# desc  hel crate slot start nchan  long-description
S2m_0       0    8   6     0    1    S2m chan 0
S2m_1       0    8   6     1    1    S2m chan 1
S2m_2       0    8   6     2    1    S2m chan 2

#
# ------- Aug 12, 2008
DATE 12 8 2008
# directives for Bigbite
#
xscaler-tabs bbite 0:Triggers 1:Total_sum 2:Scintillator 3:Preshower_Sum 4:Gas_Cherenkov   
xscaler-layout bbite 0:4x4 1:8x4 2:8x4 3:4x4 4:5x4
xscaler-pageslot bbite 0:slot5 1:slot0 2:slot1 3:slot2 4:slot4 
xscaler-pagename bbite 0:'Bigbite Triggers'
xscaler-pagename bbite 1:'Bigbite Scintillator Plane'
xscaler-pagename bbite 2:'Bigbite Total Sum'
xscaler-pagename bbite 3:'Bigbite Preshower Sum'
xscaler-pagename bbite 4:'Bigbite Gas Cherenkov'
xscaler-server bbite IP:129.57.192.8 port:5037
xscaler-clock bbite slot:5 chan:7 rate:1024
xscaler-currentnorm bbite slot:5 chan:9

#
# directives for Left HRS
xscaler-tabs Left 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:s1LR 6:s2m 7:gasC 8:a1 9:edtm
xscaler-layout Left 0:8x4 1:8x4 2:8x4 3:4x4 4:4x4 5:4x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot Left 0:slot4 1:slot3 2:slot5 3:slot0 4:slot1 5:slot2 6:slot6 7:slot7 8:slot8 9:slot9
xscaler-pagename Left 0:'L-HRS Normalization Scaler'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Left 3:'S1 Scintillator PMTs on Left Arm'
xscaler-pagename Left 4:'S2 Scintillator PMTs on Left Arm'
xscaler-pagename Left 5:'Scint S1 (Left+Right PMT) on Left Arm'
xscaler-pagename Left 6:'Scint S2m on Left Arm'
xscaler-pagename Left 7:'Gas Cerenkov on Left Arm'
xscaler-pagename Left 8:'A1 Aerogel'
xscaler-pagename Left 9:'Electronics Deadtime Measurements'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:4 chan:7 rate:1024
#
# directives for Right HRS
xscaler-tabs Right 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:gasC 6:misc1 7:misc2 8:misc3 9:edtm
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:4x4 6:4x4 7:4x4 8:4x4 9:4x4 
xscaler-pageslot Right 0:slot8 1:slot7 2:slot9 3:s1 4:s2 5:gasC 6:slot3 7:slot4 8:slot5 9:slot6 
xscaler-pagename Right 0:'R-HRS Normalization Scaler (NOT gated by helicity)'
xscaler-pagename Right 1:'R-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Right 2:'R-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Right 3:'S1 Scintillator on Right Arm (1st 6:L, 9-14:R, 17th-22:L+R)'
xscaler-pagename Right 4:'S2 Scintillator on Right Arm (1st 6:L, 9-14:R, 17th-22:L+R)'
xscaler-pagename Right 5:'Gas Cerenkov PMT on Right Arm'
xscaler-pagename Right 6:'Misc 1'
xscaler-pagename Right 7:'Misc 2'
xscaler-pagename Right 8:'Misc 3'
xscaler-pagename Right 9:'Electronics Deadtime Measurements'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:8 chan:7 rate:1024
#
crate-tied EvLeft 0:8 -1:8 1:8
crate-tied EvRight 0:7 -1:7 1:7
slot-offset EvLeft 0:0 -1:1 1:-1
slot-offset EvRight 0:0 -1:1 1:-1
slot-offset Left -1:1 1:-1 
slot-offset Right -1:1 1:-1 
#

# desc  hel crate slot start nchan  long-description
S_1L       0    9   1     7    1    S_1L
S_2L       0    9   1     8    1    S_2L
S_3L       0    9   1     9    1    S_3L
S_4L       0    9   1    10    1    S_4L
S_5L       0    9   1    11    1    S_5L
S_6L       0    9   1    12    1    S_6L
S_7L       0    9   1    13    1    S_7L
S_8L       0    9   1    14    1    S_8L
S_9L       0    9   1    15    1    S_9L
S_10L      0    9   1    16    1    S_10L
S_11L      0    9   1    17    1    S_11L
S_12L      0    9   1    18    1    S_12L
S_13L      0    9   1    19    1    S_13L
S_1R       0    9   0    26    1    S_1R
S_2R       0    9   0    27    1    S_2R
S_3R       0    9   0    28    1    S_3R
S_4R       0    9   0    29    1    S_4R
S_5R       0    9   0    30    1    S_5R
S_6R       0    9   0    31    1    S_6R
S_7R       0    9   1     0    1    S_7R
S_8R       0    9   1     1    1    S_8R
S_9R       0    9   1     2    1    S_9R
S_10R      0    9   1     3    1    S_10R
S_11R      0    9   1     4    1    S_11R
S_12R      0    9   1     5    1    S_12R
S_13R      0    9   1     6    1    S_13R

TS1       0    9   0     0    1    TS1
TS2       0    9   0     1    1    TS2
TS3       0    9   0     2    1    TS3
TS4       0    9   0     3    1    TS4
TS5       0    9   0     4    1    TS5
TS6       0    9   0     5    1    TS6
TS7       0    9   0     6    1    TS7
TS8       0    9   0     7    1    TS8
TS9       0    9   0     8    1    TS9
TS10      0    9   0     9    1    TS10
TS11      0    9   0     10    1    TS11
TS12      0    9   0     11    1    TS12
TS13      0    9   0     12    1    TS13
TS14      0    9   0     13    1    TS14
TS15      0    9   0     14    1    TS15
TS16      0    9   0     15    1    TS16
TS17      0    9   0     16    1    TS17
TS18      0    9   0     17    1    TS18
TS19      0    9   0     18    1    TS19
TS20      0    9   0     19    1    TS20
TS21      0    9   0     20    1    TS21
TS22      0    9   0     21    1    TS22
TS23      0    9   0     22    1    TS23
TS24      0    9   0     23    1    TS24
TS25      0    9   0     24    1    TS25
TS26      0    9   0     25    1    TS26

PS1       0    9   1     22    1    PS1
PS2       0    9   1     23    1    PS2
PS3       0    9   1     24    1    PS3
PS4       0    9   1     25    1    PS4
PS5       0    9   1     26    1    PS5
PS6       0    9   1     27    1    PS6
PS7       0    9   1     28    1    PS7
PS8       0    9   1     29    1    PS8
PS9       0    9   1     30    1    PS9
PS10      0    9   1     31    1    PS10
PS11      0    9   2      0    1    PS11
PS12      0    9   2      1    1    PS12
PS13      0    9   2      2    1    PS13
PS14      0    9   2      3    1    PS14
PS15      0    9   2      4    1    PS15
PS16      0    9   2      5    1    PS16
PS17      0    9   2      6    1    PS17
PS18      0    9   2      7    1    PS18
PS19      0    9   2      8    1    PS19
PS20      0    9   2      9    1    PS20
PS21      0    9   2     10    1    PS21
PS22      0    9   2     11    1    PS22
PS23      0    9   2     12    1    PS23
PS24      0    9   2     13    1    PS24
PS25      0    9   2     14    1    PS25
PS26      0    9   2     15    1    PS26

C1       0    9   1     0    1    C1
C2       0    9   1     1    1    C2
C3       0    9   1     2    1    C3
C4       0    9   1     3    1    C4
C5       0    9   1     4    1    C5
C6       0    9   1     5    1    C6
C7       0    9   1     6    1    C7
C8       0    9   1     7    1    C8
C9       0    9   1     8    1    C9
C10       0    9   1    9    1    C10
C11       0    9   1     10    1    C11
C12       0    9   1     11    1    C12
C13       0    9   1     12    1    C13
C14       0    9   1     13    1    C14
C15       0    9   1     14    1    C15
C16       0    9   1     15    1    C16
C17       0    9   1     16    1    C17
C18       0    9   1     17    1    C18
C19       0    9   1     18    1    C19
C20       0    9   1     19    1    C20

T1    0    9   5     0    1    BBite T1
T2    0    9   5     1    1    BBite T2
T3    0    9   5     2    1    BBite T3
T4    0    9   5     3    1    BBite T4
T5    0    9   5     4    1    BBite T5
T6    0    9   5     5    1    BBite T6
T7    0    9   5     6    1    BBite T7
T8    0    9   5     7    1    BBite T8

L1A   0    9   5     8    1    BBite L1A
current   0    9   5     9    1    Current to normalize by
EDTM   0    9   5     10    1    EDTM Slave
DAQ_Lumi   0    9   5     15    1    DAQ Lumi

# Also need these two lines, regardless of the above
# Doesn't hurt to have two names corresponding to one channel
clock     0    9   5     7    1    The clock (1024 Hz)
TS-accept 0    9   5     8    1    BBite L1A = TS-accept


# Right HRS:
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   0     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   0    16    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2L       0    7   1     0    6   S2 Scintillator Left PMTs on Right Arm
s2R       0    7   1     8    6   S2 Scintillator Right PMTs on Right Arm
s2        0    7   1    16    6   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   2     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
trigger-3 0    7   8     2    1   trigger 3 on Right Arm
trigger-4 0    7   8     3    1   trigger 4 on Right Arm
trigger-5 0    7   8     4    1   trigger 5 on Right Arm
trigger-6 0    7   8     5    1   trigger 6 on Right Arm
trigger-7 0    7   8    11    1   trigger  on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
T9        0    7   8    24    1   Trigger 9 (30 Hz helicity)
strobe    0    7   8    19    1   Strobe for S-ray trigger
edtm      0    7   9     8    1   Edtm pulser
#
# Left HRS:  (a1 in slot 8,  s2m in slot 6 -- Aug 2008)
# desc  hel crate slot start nchan  long-description
1L        0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
s2L       0    8   1     0    6   S2 Scintillator Left PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s12       0    8   2     0    6   S1,S2 (Left.and.Right PMT) on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   4     5    1   trigger 6 
trigger-7 0    8   4     6    1   trigger 7 (had been u3 -- u3 was moved) 
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4    16    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   4    19    1   Strobe for S-ray trigger
T9        0    8   4    24    1   Trigger T9 (30 Hz helicity)
unser     0    8   4    14    1   Unser monitor
# s2m       0    8   6     0   32   S2m detector
a1        0    8   8     0   32   Aerogel detector
#
# desc  hel crate slot start nchan  long-description
S2m_0       0    8   6     0    1    S2m chan 0
S2m_1       0    8   6     1    1    S2m chan 1
S2m_2       0    8   6     2    1    S2m chan 2

#
#
# ------- Mar 1, 2008
DATE 1 3 2008
# directives for Bigbite
#
xscaler-tabs bbite 0:Triggers 1:Total_sum 2:Scintillator 3:Preshower_Sum 4:Gas_Cherenkov   
xscaler-layout bbite 0:4x4 1:8x4 2:8x4 3:4x4 4:5x4
xscaler-pageslot bbite 0:slot5 1:slot0 2:slot1 3:slot2 4:slot4 
xscaler-pagename bbite 0:'Bigbite Triggers'
xscaler-pagename bbite 1:'Bigbite Scintillator Plane'
xscaler-pagename bbite 2:'Bigbite Total Sum'
xscaler-pagename bbite 3:'Bigbite Preshower Sum'
xscaler-pagename bbite 4:'Bigbite Gas Cherenkov'
xscaler-server bbite IP:129.57.192.8 port:5037
xscaler-clock bbite slot:5 chan:7 rate:1024
xscaler-currentnorm bbite slot:5 chan:9

#
# directives for Left HRS
xscaler-tabs Left 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:s1LR 6:s2LR 7:gasC 8:misc1 9:edtm
xscaler-layout Left 0:8x4 1:8x4 2:8x4 3:4x4 4:4x4 5:4x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot Left 0:slot4 1:slot3 2:slot5 3:slot0 4:slot1 5:slot2 6:slot6 7:slot7 8:slot8 9:slot9
xscaler-pagename Left 0:'L-HRS Normalization Scaler'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Left 3:'S1 Scintillator PMTs on Left Arm'
xscaler-pagename Left 4:'S2 Scintillator PMTs on Left Arm'
xscaler-pagename Left 5:'Scint S1 (Left+Right PMT) on Left Arm'
xscaler-pagename Left 6:'Scint S2 (Left+Right PMT) on Left Arm'
xscaler-pagename Left 7:'Gas Cerenkov on Left Arm'
xscaler-pagename Left 8:'Misc 1 on Left Arm'
xscaler-pagename Left 9:'Electronics Deadtime Measurements'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:4 chan:7 rate:1024
#
# directives for Right HRS
xscaler-tabs Right 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:gasC 6:misc1 7:misc2 8:misc3 9:edtm
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:4x4 6:4x4 7:4x4 8:4x4 9:4x4 
xscaler-pageslot Right 0:slot8 1:slot7 2:slot9 3:s1 4:s2 5:gasC 6:slot3 7:slot4 8:slot5 9:slot6 
xscaler-pagename Right 0:'R-HRS Normalization Scaler (NOT gated by helicity)'
xscaler-pagename Right 1:'R-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Right 2:'R-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Right 3:'S1 Scintillator on Right Arm (1st 6:L, 9-14:R, 17th-22:L+R)'
xscaler-pagename Right 4:'S2 Scintillator on Right Arm (1st 6:L, 9-14:R, 17th-22:L+R)'
xscaler-pagename Right 5:'Gas Cerenkov PMT on Right Arm'
xscaler-pagename Right 6:'Misc 1'
xscaler-pagename Right 7:'Misc 2'
xscaler-pagename Right 8:'Misc 3'
xscaler-pagename Right 9:'Electronics Deadtime Measurements'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:8 chan:7 rate:1024
#
crate-tied EvLeft 0:8 -1:8 1:8
crate-tied EvRight 0:7 -1:7 1:7
slot-offset EvLeft 0:0 -1:1 1:-1
slot-offset EvRight 0:0 -1:1 1:-1
slot-offset Left -1:1 1:-1 
slot-offset Right -1:1 1:-1 
#

# desc  hel crate slot start nchan  long-description
S_1L       0    9   1     7    1    S_1L
S_2L       0    9   1     8    1    S_2L
S_3L       0    9   1     9    1    S_3L
S_4L       0    9   1    10    1    S_4L
S_5L       0    9   1    11    1    S_5L
S_6L       0    9   1    12    1    S_6L
S_7L       0    9   1    13    1    S_7L
S_8L       0    9   1    14    1    S_8L
S_9L       0    9   1    15    1    S_9L
S_10L      0    9   1    16    1    S_10L
S_11L      0    9   1    17    1    S_11L
S_12L      0    9   1    18    1    S_12L
S_13L      0    9   1    19    1    S_13L
S_1R       0    9   0    26    1    S_1R
S_2R       0    9   0    27    1    S_2R
S_3R       0    9   0    28    1    S_3R
S_4R       0    9   0    29    1    S_4R
S_5R       0    9   0    30    1    S_5R
S_6R       0    9   0    31    1    S_6R
S_7R       0    9   1     0    1    S_7R
S_8R       0    9   1     1    1    S_8R
S_9R       0    9   1     2    1    S_9R
S_10R      0    9   1     3    1    S_10R
S_11R      0    9   1     4    1    S_11R
S_12R      0    9   1     5    1    S_12R
S_13R      0    9   1     6    1    S_13R

TS1       0    9   0     0    1    TS1
TS2       0    9   0     1    1    TS2
TS3       0    9   0     2    1    TS3
TS4       0    9   0     3    1    TS4
TS5       0    9   0     4    1    TS5
TS6       0    9   0     5    1    TS6
TS7       0    9   0     6    1    TS7
TS8       0    9   0     7    1    TS8
TS9       0    9   0     8    1    TS9
TS10      0    9   0     9    1    TS10
TS11      0    9   0     10    1    TS11
TS12      0    9   0     11    1    TS12
TS13      0    9   0     12    1    TS13
TS14      0    9   0     13    1    TS14
TS15      0    9   0     14    1    TS15
TS16      0    9   0     15    1    TS16
TS17      0    9   0     16    1    TS17
TS18      0    9   0     17    1    TS18
TS19      0    9   0     18    1    TS19
TS20      0    9   0     19    1    TS20
TS21      0    9   0     20    1    TS21
TS22      0    9   0     21    1    TS22
TS23      0    9   0     22    1    TS23
TS24      0    9   0     23    1    TS24
TS25      0    9   0     24    1    TS25
TS26      0    9   0     25    1    TS26

PS1       0    9   1     22    1    PS1
PS2       0    9   1     23    1    PS2
PS3       0    9   1     24    1    PS3
PS4       0    9   1     25    1    PS4
PS5       0    9   1     26    1    PS5
PS6       0    9   1     27    1    PS6
PS7       0    9   1     28    1    PS7
PS8       0    9   1     29    1    PS8
PS9       0    9   1     30    1    PS9
PS10      0    9   1     31    1    PS10
PS11      0    9   2      0    1    PS11
PS12      0    9   2      1    1    PS12
PS13      0    9   2      2    1    PS13
PS14      0    9   2      3    1    PS14
PS15      0    9   2      4    1    PS15
PS16      0    9   2      5    1    PS16
PS17      0    9   2      6    1    PS17
PS18      0    9   2      7    1    PS18
PS19      0    9   2      8    1    PS19
PS20      0    9   2      9    1    PS20
PS21      0    9   2     10    1    PS21
PS22      0    9   2     11    1    PS22
PS23      0    9   2     12    1    PS23
PS24      0    9   2     13    1    PS24
PS25      0    9   2     14    1    PS25
PS26      0    9   2     15    1    PS26

C1       0    9   1     0    1    C1
C2       0    9   1     1    1    C2
C3       0    9   1     2    1    C3
C4       0    9   1     3    1    C4
C5       0    9   1     4    1    C5
C6       0    9   1     5    1    C6
C7       0    9   1     6    1    C7
C8       0    9   1     7    1    C8
C9       0    9   1     8    1    C9
C10       0    9   1    9    1    C10
C11       0    9   1     10    1    C11
C12       0    9   1     11    1    C12
C13       0    9   1     12    1    C13
C14       0    9   1     13    1    C14
C15       0    9   1     14    1    C15
C16       0    9   1     15    1    C16
C17       0    9   1     16    1    C17
C18       0    9   1     17    1    C18
C19       0    9   1     18    1    C19
C20       0    9   1     19    1    C20

T1    0    9   5     0    1    BBite T1
T2    0    9   5     1    1    BBite T2
T3    0    9   5     2    1    BBite T3
T4    0    9   5     3    1    BBite T4
T5    0    9   5     4    1    BBite T5
T6    0    9   5     5    1    BBite T6
T7    0    9   5     6    1    BBite T7
T8    0    9   5     7    1    BBite T8
L1A   0    9   5     8    1    BBite L1A
current   0    9   5     9    1    Current to normalize by
EDTM   0    9   5     10    1    EDTM Slave
DAQ_Lumi   0    9   5     15    1    DAQ Lumi

# Also need these two lines, regardless of the above
# Doesn't hurt to have two names corresponding to one channel
clock     0    9   5     7    1    The clock (1024 Hz)
TS-accept 0    9   5     8    1    BBite L1A = TS-accept


# Right HRS:
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   0     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   0    16    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2L       0    7   1     0    6   S2 Scintillator Left PMTs on Right Arm
s2R       0    7   1     8    6   S2 Scintillator Right PMTs on Right Arm
s2        0    7   1    16    6   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   2     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
trigger-3 0    7   8     2    1   trigger 3 on Right Arm
trigger-4 0    7   8     3    1   trigger 4 on Right Arm
trigger-5 0    7   8     4    1   trigger 5 on Right Arm
trigger-6 0    7   8     5    1   trigger 6 on Right Arm
trigger-7 0    7   8    11    1   trigger  on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
T9        0    7   8    24    1   Trigger 9 (30 Hz helicity)
strobe    0    7   8    19    1   Strobe for S-ray trigger
edtm      0    7   9     8    1   Edtm pulser
#
# Left HRS:
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
s2L       0    8   1     0    6   S2 Scintillator Left PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s12       0    8   2     0    6   S1,S2 (Left.and.Right PMT) on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   4     5    1   trigger 6 
trigger-7 0    8   4     6    1   trigger 7 (had been u3 -- u3 was moved) 
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4    16    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   4    19    1   Strobe for S-ray trigger
T9        0    8   4    24    1   Trigger T9 (30 Hz helicity)
unser     0    8   4    14    1   Unser monitor
edtm      0    8   6     0    1   Edtm pulser
#
#
# ------- Oct 8, 2007
DATE 8 10 2007
# directives 
xscaler-tabs Left 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:s1LR 6:s2LR 7:gasC 8:misc1 9:edtm
xscaler-layout Left 0:8x4 1:8x4 2:8x4 3:4x4 4:4x4 5:4x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot Left 0:slot4 1:slot3 2:slot5 3:slot0 4:slot1 5:slot2 6:slot6 7:slot7 8:slot8 9:slot9
xscaler-pagename Left 0:'L-HRS Normalization Scaler'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Left 3:'S1 Scintillator PMTs on Left Arm'
xscaler-pagename Left 4:'S2 Scintillator PMTs on Left Arm'
xscaler-pagename Left 5:'Scint S1 (Left+Right PMT) on Left Arm'
xscaler-pagename Left 6:'Scint S2 (Left+Right PMT) on Left Arm'
xscaler-pagename Left 7:'Gas Cerenkov on Left Arm'
xscaler-pagename Left 8:'Misc 1 on Left Arm'
xscaler-pagename Left 9:'Electronics Deadtime Measurements'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:4 chan:7 rate:1024
#
xscaler-tabs Right 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:gasC 6:misc1 7:misc2 8:misc3 9:edtm
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:4x4 6:4x4 7:4x4 8:4x4 9:4x4 
xscaler-pageslot Right 0:slot8 1:slot7 2:slot9 3:s1 4:s2 5:gasC 6:slot3 7:slot4 8:slot5 9:slot6 
xscaler-pagename Right 0:'R-HRS Normalization Scaler (NOT gated by helicity)'
xscaler-pagename Right 1:'R-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Right 2:'R-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Right 3:'S1 Scintillator on Right Arm (1st 6:L, 9-14:R, 17th-22:L+R)'
xscaler-pagename Right 4:'S2 Scintillator on Right Arm (1st 6:L, 9-14:R, 17th-22:L+R)'
xscaler-pagename Right 5:'Gas Cerenkov PMT on Right Arm'
xscaler-pagename Right 6:'Misc 1'
xscaler-pagename Right 7:'Misc 2'
xscaler-pagename Right 8:'Misc 3'
xscaler-pagename Right 9:'Electronics Deadtime Measurements'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:8 chan:7 rate:1024
#
crate-tied EvLeft 0:8 -1:8 1:8
crate-tied EvRight 0:7 -1:7 1:7
slot-offset EvLeft 0:0 -1:1 1:-1
slot-offset EvRight 0:0 -1:1 1:-1
slot-offset Left -1:1 1:-1 
slot-offset Right -1:1 1:-1 
#
# desc  hel crate slot start nchan  long-description
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   0     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   0    16    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2L       0    7   1     0    6   S2 Scintillator Left PMTs on Right Arm
s2R       0    7   1     8    6   S2 Scintillator Right PMTs on Right Arm
s2        0    7   1    16    6   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   2     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
trigger-3 0    7   8     2    1   trigger 3 on Right Arm
trigger-4 0    7   8     3    1   trigger 4 on Right Arm
trigger-5 0    7   8     4    1   trigger 5 on Right Arm
trigger-6 0    7   8     5    1   trigger 6 on Right Arm
trigger-7 0    7   8    11    1   trigger  on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
T9        0    7   8    24    1   Trigger 9 (30 Hz helicity)
strobe    0    7   8    19    1   Strobe for S-ray trigger
edtm      0    7   9     8    1   Edtm pulser
#
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
s2L       0    8   1     0    6   S2 Scintillator Left PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s12       0    8   2     0    6   S1,S2 (Left.and.Right PMT) on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   4     5    1   trigger 6 
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   4    19    1   Strobe for S-ray trigger
T9        0    8   4    24    1   Trigger T9 (30 Hz helicity)
unser     0    8   4    14    1   Unser monitor
edtm      0    8   6     0    1   Edtm pulser
#
#
# ------- Feb 22, 2007
DATE 22 2 2007
# directives 
xscaler-tabs Left 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:s1LR 6:s2LR 7:gasC 8:misc1 9:edtm
xscaler-layout Left 0:8x4 1:8x4 2:8x4 3:4x4 4:4x4 5:4x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot Left 0:slot4 1:slot3 2:slot5 3:slot0 4:slot1 5:slot2 6:slot6 7:slot7 8:slot8 9:slot9
xscaler-pagename Left 0:'L-HRS Normalization Scaler'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Left 3:'S1 Scintillator PMTs on Left Arm'
xscaler-pagename Left 4:'S2 Scintillator PMTs on Left Arm'
xscaler-pagename Left 5:'Scint S1 (Left+Right PMT) on Left Arm'
xscaler-pagename Left 6:'Scint S2 (Left+Right PMT) on Left Arm'
xscaler-pagename Left 7:'Gas Cerenkov on Left Arm'
xscaler-pagename Left 8:'Misc 1 on Left Arm'
xscaler-pagename Left 9:'Electronics Deadtime Measurements'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:4 chan:7 rate:1024
#
xscaler-tabs Right 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:gasC 6:misc1 7:misc2 8:misc3 9:edtm
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:4x4 6:4x4 7:4x4 8:4x4 9:4x4 
xscaler-pageslot Right 0:slot8 1:slot7 2:slot9 3:s1 4:s2 5:gasC 6:slot3 7:slot4 8:slot5 9:slot6 
xscaler-pagename Right 0:'R-HRS Normalization Scaler (NOT gated by helicity)'
xscaler-pagename Right 1:'R-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Right 2:'R-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Right 3:'S1 Scintillator on Right Arm (1st 6:L, 9-12:R, 16-21:L+R)'
xscaler-pagename Right 4:'S2m Scintillator on Right Arm'
xscaler-pagename Right 5:'Gas Cerenkov PMT on Right Arm'
xscaler-pagename Right 6:'Misc 1'
xscaler-pagename Right 7:'Misc 2'
xscaler-pagename Right 8:'Misc 3'
xscaler-pagename Right 9:'Electronics Deadtime Measurements'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:8 chan:7 rate:1024
#
crate-tied EvLeft 0:8 -1:8 1:8
crate-tied EvRight 0:7 -1:7 1:7
slot-offset EvLeft 0:0 -1:1 1:-1
slot-offset EvRight 0:0 -1:1 1:-1
slot-offset Left -1:1 1:-1 
slot-offset Right -1:1 1:-1 
#
# desc  hel crate slot start nchan  long-description
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   0     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   0    16    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   1     0   32   S2m Scintillator on Right Arm
gasC      0    7   2     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
trigger-3 0    7   8     2    1   trigger 3 on Right Arm
trigger-4 0    7   8     3    1   trigger 4 on Right Arm
trigger-5 0    7   8     4    1   trigger 5 on Right Arm
trigger-6 0    7   8     5    1   trigger 6 on Right Arm
trigger-7 0    7   8    11    1   trigger  on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8    14    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
T9        0    7   8    24    1   Trigger 9 (30 Hz helicity)
strobe    0    7   8    19    1   Strobe for S-ray trigger
edtm      0    7   9     8    1   Edtm pulser
#
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
s2L       0    8   1     0    6   S2 Scintillator Left PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s12       0    8   2     0    6   S1,S2 (Left.and.Right PMT) on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
empty     0    8   4     1    1   (unplugged) trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   4     5    1   trigger 6 
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   4    19    1   Strobe for S-ray trigger
T9        0    8   4    24    1   Trigger T9 (30 Hz helicity)
unser     0    8   4    14    1   Unser monitor
edtm      0    8   6     0    1   Edtm pulser
#
#
# ------- May 30, 2006
DATE 30 5 2006
# directives 
xscaler-tabs Left 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:s1LR 6:s2LR 7:gasC 8:misc1 9:edtm
xscaler-layout Left 0:8x4 1:8x4 2:8x4 3:4x4 4:4x4 5:4x4 6:8x4 7:8x4 8:8x4 9:8x4
xscaler-pageslot Left 0:slot4 1:slot3 2:slot5 3:slot0 4:slot1 5:slot2 6:slot6 7:slot7 8:slot8 9:slot9
xscaler-pagename Left 0:'L-HRS Norm -- but see R-arm for e06007'
xscaler-pagename Left 1:'L-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Left 2:'L-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Left 3:'S1 Scintillator PMTs on Left Arm'
xscaler-pagename Left 4:'S2 Scintillator PMTs on Left Arm'
xscaler-pagename Left 5:'Scint S1 (Left+Right PMT) on Left Arm'
xscaler-pagename Left 6:'Scint S2 (Left+Right PMT) on Left Arm'
xscaler-pagename Left 7:'Gas Cerenkov on Left Arm'
xscaler-pagename Left 8:'Misc 1 on Left Arm'
xscaler-pagename Left 9:'Electronics Deadtime Measurements'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:4 chan:7 rate:1024
#
xscaler-tabs Right 0:norm 1:nplus 2:nminus 3:s1 4:s2 5:gasC 6:misc1 7:misc2 8:misc3 9:edtm
xscaler-layout Right 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:4x4 6:4x4 7:4x4 8:4x4 9:4x4 
xscaler-pageslot Right 0:slot8 1:slot7 2:slot9 3:s1 4:s2 5:gasC 6:slot3 7:slot4 8:slot5 9:slot6 
xscaler-pagename Right 0:'R-HRS Normalization Scaler (NOT gated by helicity)'
xscaler-pagename Right 1:'R-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Right 2:'R-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Right 3:'S1 Scintillator on Right Arm (1st 6:L, 9-12:R, 16-21:L+R)'
xscaler-pagename Right 4:'S2m Scintillator on Right Arm'
xscaler-pagename Right 5:'Gas Cerenkov PMT on Right Arm'
xscaler-pagename Right 6:'Misc 1'
xscaler-pagename Right 7:'Misc 2'
xscaler-pagename Right 8:'Misc 3'
xscaler-pagename Right 9:'Electronics Deadtime Measurements'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:8 chan:7 rate:1024
#
crate-tied EvLeft 0:8 -1:8 1:8
crate-tied EvRight 0:7 -1:7 1:7
slot-offset EvLeft 0:0 -1:1 1:-1
slot-offset EvRight 0:0 -1:1 1:-1
slot-offset Left -1:1 1:-1 
slot-offset Right -1:1 1:-1 
#
# desc  hel crate slot start nchan  long-description
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   0     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   0    16    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   1     0   32   S2m Scintillator on Right Arm
gasC      0    7   2     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
T9        0    7   8    24    1   Trigger 9 (30 Hz helicity)
strobe    0    7   8    19    1   Strobe for S-ray trigger
#
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
s2L       0    8   1     0    6   S2 Scintillator Left PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s12       0    8   2     0    6   S1,S2 (Left.and.Right PMT) on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   4     5    1   trigger 6 
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   4    19    1   Strobe for S-ray trigger
T9        0    8   4    24    1   Trigger T9 (30 Hz helicity)
unser     0    8   4    14    1   Unser monitor
#
#
# ------- Jan 1 2006
DATE 1 1 2006
# directives 
xscaler-tabs gen 0:norm 1:nplus 2:nminus 3:gen3 4:gen4 5:gen5 6:gen6 7:gen7 8:gen8 
xscaler-layout gen 0:8x4 1:8x4 2:8x4 3:8x4 4:8x4 5:8x4 6:8x4 7:8x4 8:8x4
xscaler-pageslot gen 0:slot2 1:slot0 2:slot1 3:slot3 4:slot4 5:slot5 6:slot6 7:slot7 8:slot8
xscaler-pagename gen 0:'GeN Normalization Scaler (NOT gated by helicity)'
xscaler-pagename gen 1:'GeN Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename gen 2:'GeN Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename gen 3:'GeN scaler in 3rd slot (first non-norm scalers)'
xscaler-pagename gen 4:'GeN scaler in 4th slot'
xscaler-pagename gen 5:'GeN scaler in 5th slot'
xscaler-pagename gen 6:'GeN scaler in 6th slot'
xscaler-pagename gen 7:'GeN scaler in 7th slot'
xscaler-pagename gen 8:'GeN scaler in 8th slot'
xscaler-server gen IP:129.57.192.5 port:5022
# careful, normslot is also defined in THaScaler::InitData()
xscaler-clock gen slot:2 chan:11 rate:105000
#
slot-offset gen -1:-1 1:-2 
#
# ok, this is confusing.  The slot numbers in 4th column are the virtual slot,
# which is 1 more than the physical slot because the helicity scaler appears
# as two banks(slots) of data.  So slot 0=hel+, 1=hel- but it is one physical
# slot (which at the moment is off to the far left).  
gen3       0    9   3     0   32   GeN Data in 1st non-norm scaler (3rd phy. slot)
gen4       0    9   4     0   32   GeN Data in 1st non-norm scaler (4th phy. slot)
gen5       0    9   5     0   32   GeN Data in 1st non-norm scaler (5th phy. slot)
gen6       0    9   6     0   32   GeN Data in 1st non-norm scaler (6th phy. slot)
gen7       0    9   7     0   32   GeN Data in 1st non-norm scaler (7th phy. slot)
gen8       0    9   8     0   32   GeN Data in 1st non-norm scaler (8th phy. slot)
# Normalization scaler: triggers and charge
#         hel  cr  sl    ch  #ch  
trigger-1 0    9   2     0    1   trigger 1 = electron arm
trigger-2 0    9   2     1    1   trigger 2 = neutron arm
trigger-3 0    9   2     2    1   trigger 3 = e-N coinc
trigger-4 0    9   2     3    1   trigger 4 
trigger-5 0    9   2     4    1   trigger 5 
trigger-6 0    9   2     5    1   trigger 6 
trigger-7 0    9   2     6    1   trigger 7 
trigger-8 0    9   2     7    1   trigger 8
clock     0    9   2    11    1   105 kHz clock
TS-accept 0    9   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    9   2    16    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    9   2    17    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    9   2    18    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    9   2    19    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    9   2    20    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    9   2    21    1   Beam current, downstream cavity, gain = 10
#
#
# ------- Jan 10 2005
DATE 10 1 2005
# directives 
xscaler-tabs Left 0:s1LR 1:s1 2:s2 3:nplus 4:nminus 5:norm
xscaler-layout Left 0:4x4 1:2x4 2:8x4 3:8x4 4:8x4 5:8x4
xscaler-pageslot Left 0:s1L 1:s1 2:s2 3:slot3 4:slot5 5:slot4 
xscaler-pagename Left 0:'S1 Scintillators Left, Right PMTs on Left Arm'
xscaler-pagename Left 1:'S1 Paddles (Left.and.Right PMT) on Left Arm'
xscaler-pagename Left 2:'S2m Scintillator on Left Arm'
xscaler-pagename Left 3:'L-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Left 4:'L-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Left 5:'L-HRS Normalization Scaler (NOT gated by helicity)'
xscaler-server Left IP:129.57.192.30 port:5022
xscaler-clock Left slot:4 chan:7 rate:1024
#
xscaler-tabs Right 0:s1LR 1:s1 2:s2 3:gasC 4:nplus 5:nminus 6:norm
xscaler-layout Right 0:4x4 1:2x4 2:8x4 3:3x4 4:8x4 5:8x4 6:8x4
xscaler-pageslot Right 0:s1L 1:s1 2:s2 3:gasC 4:slot7 5:slot9 6:slot8 
xscaler-pagename Right 0:'S1 Scintillators Left, Right PMTs on Right Arm'
xscaler-pagename Right 1:'S1 Paddles (Left.and.Right PMT) on Right Arm'
xscaler-pagename Right 2:'S2m Scintillator on Right Arm'
xscaler-pagename Right 3:'Gas Cerenkov PMT on Right Arm'
xscaler-pagename Right 4:'R-HRS Normalization Scaler ++ gated by helicity PLUS'
xscaler-pagename Right 5:'R-HRS Normalization Scaler -- gated by helicity MINUS'
xscaler-pagename Right 6:'R-HRS Normalization Scaler (NOT gated by helicity)'
xscaler-server Right IP:129.57.192.28 port:5021
xscaler-clock Right slot:8 chan:7 rate:1024
#
crate-tied EvLeft 0:8 -1:8 1:8
crate-tied EvRight 0:7 -1:7 1:7
slot-offset EvLeft 0:0 -1:1 1:-1
slot-offset EvRight 0:0 -1:1 1:-1
slot-offset Left -1:1 1:-1 
slot-offset Right -1:1 1:-1 
#
# desc  hel crate slot start nchan  long-description
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   0     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   0    16    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   1     0   32   S2m Scintillator on Right Arm
gasC      0    7   2     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
mlut1     0    7   8    24    1   MLU formed T1 (not main trigger)
strobe    0    7   8    19    1   Strobe for S-ray trigger
#
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
s1        0    8   1     0    6   S1 Paddles (Left.and.Right PMT) on Left Arm
s2        0    8   6     0   32   S2m Scintillator on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   4    16    1   trigger 6 
trigger-7 0    8   4    17    1   trigger 7 
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   4    19    1   Strobe for S-ray trigger
mlut3     0    8   4    24    1   MLU formed T3 (not main trigger)
unser     0    8   4    14    1   Unser monitor
#
#
# ------- Sept 14, 2004
# desc  hel crate slot start nchan  long-description
DATE 14 9 2004
# DVCS calorimeter.
dvcscalo1  0   9   0     0   31   DVCS Calo scalers 1
clock      0   9   0     7    1   105 kHz clock
dvcscalo2  0   9   1     0   31   DVCS Calo scalers 2 
# ROC10 synchronous readout. Correspondence of slot to header is in THaCrateMap
trigger-1 0   10   2     0    1   trigger 1 on Right Arm
trigger-2 0   10   2     1    1   trigger 2 on Right Arm
clock     0   10   2     7    1   1024 Hz clock (T8)
trigger-8 0   10   2     7    1   1024 Hz trigger 8
TS-accept 0   10   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0   10   2    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0   10   2     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0   10   2     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0   10   2    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0   10   2     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0   10   2    10    1   Beam current, downstream cavity, gain = 10
mlut1     0   10   2    24    1   MLU formed T1 (not main trigger)
strobe    0   10   2    19    1   Strobe for S-ray trigger
trigger-3 0   10   2    21    1   copy of trigger 3 on R-arm
trigger-4 0   10   2    22    1   copy of trigger 4 on R-arm
trigger-1 1   10   1     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1   10   1     1    1   trigger 2 on Right Arm (Hel +)
clock     1   10   1     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1   10   1     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1   10   1    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1   10   1    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1   10   1     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1   10   1     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1   10   1    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1   10   1     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1   10   1    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1   10   1    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1   10   1    19    1   Strobe for S-ray trigger (Hel +)
trigger-3 1   10   1    21    1   copy of trigger-3 on R-arm (Hel +)
trigger-4 1   10   1    22    1   copy of trigger-4 on R-arm (Hel +)
trigger-1 -1   10   3     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1   10   3     1    1   trigger 2 on Right Arm (Hel -)
clock     -1   10   3     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1   10   3     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1   10   3    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1   10   3    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1   10   3     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1   10   3     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1   10   3    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1   10   3     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1   10   3    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1   10   3    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1   10   3    19    1   Strobe for S-ray trigger (Hel -)
trigger-3 -1   10   3    21    1   copy of trigger-3 on R-arm (Hel -)
trigger-4 -1   10   3    22    1   copy of trigger-4 on R-arm (Hel -)
# ROC11 synchronous readout. Correspondence of slot to header is in THaCrateMap.
trigger-1 0    11   2     0    1   trigger 1 measured on Left Arm (synch events)
trigger-2 0    11   2     1    1   trigger 2 measured on Left Arm (synch events)
trigger-3 0    11   2     2    1   trigger 3 on Left Arm (synch events)
trigger-4 0    11   2     3    1   trigger 4 on Left Arm (synch events)
trigger-5 0    11   2     4    1   trigger 5 measured on Left Arm (synch events)
trigger-6 0    11   2    16    1   trigger 6
trigger-7 0    11   2    17    1   trigger 7
clock     0    11   2     7    1   1024 Hz clock (T8)
trigger-8 0    11   2     7    1   1024 Hz trigger 8
TS-accept 0    11   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    11   2    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    11   2     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    11   2     11    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    11   2    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    11   2    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    11   2    11    1   Beam current, downstream cavity, gain = 10
strobe    0    11   2    19    1   Strobe for S-ray trigger
mlut3     0    11   2    24    1   MLU formed T3 (not main trigger)
unser     0    11   2    14    1   Unser monitor
trigger-1 1    11   1     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    11   1     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    11   1     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    11   1     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    11   1     4    1   trigger 5 measured on Left Arm (Hel +)
trigger-6 1    11   1    16    1   trigger 6 (Hel +)
trigger-7 1    11   1    17    1   trigger 7 (Hel +)
clock     1    11   1     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    11   1     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    11   1    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    11   1    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    11   1     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    11   1     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    11   1    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    11   1    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    11   1    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
q10abusy  1    11   1    16    1   Q10 signal gated by Trigger Supervisor busy (Hel +)
clkabusy  1    11   1    17    1   Clock gated by Trigger Supervisor busy (Hel +)
strobe    1    11   1    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    11   1    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    11   1    14    1   Unser monitor (Hel +)
trigger-1 -1    11   3     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    11   3     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    11   3     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    11   3     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    11   3     4    1   trigger 5 measured on Left Arm (Hel -)
trigger-6 -1    11   3    16    1   trigger 6 (Hel -)
trigger-7 -1    11   3    17    1   trigger 7 (Hel -)
clock     -1    11   3     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    11   3     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    11   3    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    11   3    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    11   3     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    11   3     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    11   3    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    11   3    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    11   3    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
q10abusy  -1    11   3    16    1   Q10 signal gated by Trigger Supervisor busy (Hel -)
clkabusy  -1    11   3    17    1   Clock gated by Trigger Supervisor busy (Hel -)
strobe    -1    11   3    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    11   3    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    11   3    14    1   Unser monitor (Hel -)
# The rest is event type 140.  The slot is parsed from the header.
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   0     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   0    16    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   1     0   32   S2m Scintillator on Right Arm
gasC      0    7   2     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
mlut1     0    7   8    24    1   MLU formed T1 (not main trigger)
strobe    0    7   8    19    1   Strobe for S-ray trigger
trigger-1 1    7   7     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1    7   7     1    1   trigger 2 on Right Arm (Hel +)
clock     1    7   7     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    7   7     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    7   7    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    7   7    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    7   7     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    7   7     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    7   7    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    7   7     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    7   7    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1    7   7    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1    7   7    19    1   Strobe for S-ray trigger (Hel +)
trigger-1 -1    7   9     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1    7   9     1    1   trigger 2 on Right Arm (Hel -)
clock     -1    7   9     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    7   9     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    7   9    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    7   9    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    7   9     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    7   9     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    7   9    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    7   9     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    7   9    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1    7   9    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1    7   9    19    1   Strobe for S-ray trigger (Hel -)
# Start of Left arm event 140 data
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
s1        0    8   1     0    6   S1 Paddles (Left.and.Right PMT) on Left Arm
s2        0    8   6     0   32   S2m Scintillator on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   4    16    1   trigger 6 
trigger-7 0    8   4    17    1   trigger 7 
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   4    19    1   Strobe for S-ray trigger
mlut3     0    8   4    24    1   MLU formed T3 (not main trigger)
unser     0    8   4    14    1   Unser monitor
trigger-1 1    8   3     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    8   3     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    8   3     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    8   3     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    8   3     4    1   trigger 5 measured on Left Arm (Hel +)
trigger-6 1    8   3    16    1   trigger 6 (Hel +) 
trigger-7 1    8   3    17    1   trigger 7 (Hel +)
clock     1    8   3     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    8   3     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    8   3    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    8   3    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    8   3     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    8   3     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    8   3    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    8   3    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    8   3    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
strobe    1    8   3    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    8   3    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    8   3    14    1   Unser monitor (Hel +)
trigger-1 -1    8   5     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    8   5     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    8   5     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    8   5     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    8   5     4    1   trigger 5 measured on Left Arm (Hel -)
trigger-6 -1    8   5    16    1   trigger 6 (Hel -) 
trigger-7 -1    8   5    17    1   trigger 7 (Hel -)
clock     -1    8   5     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    8   5     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    8   5    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    8   5    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    8   5     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    8   5     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    8   5    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    8   5    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    8   5    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
strobe    -1    8   5    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    8   5    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    8   5    14    1   Unser monitor (Hel -)
#
#
# ------- Dec 29, 2003
# desc  hel crate slot start nchan  long-description
DATE 29 12 2003
# ROC10 synchronous readout. Correspondence of slot to header is in THaCrateMap
trigger-1 0   10   2     0    1   trigger 1 on Right Arm
trigger-2 0   10   2     1    1   trigger 2 on Right Arm
clock     0   10   2     7    1   1024 Hz clock (T8)
trigger-8 0   10   2     7    1   1024 Hz trigger 8
TS-accept 0   10   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0   10   2    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0   10   2     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0   10   2     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0   10   2    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0   10   2     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0   10   2    10    1   Beam current, downstream cavity, gain = 10
mlut1     0   10   2    24    1   MLU formed T1 (not main trigger)
strobe    0   10   2    19    1   Strobe for S-ray trigger
trigger-3 0   10   2    21    1   copy of trigger 3 on R-arm
trigger-4 0   10   2    22    1   copy of trigger 4 on R-arm
trigger-1 1   10   1     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1   10   1     1    1   trigger 2 on Right Arm (Hel +)
clock     1   10   1     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1   10   1     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1   10   1    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1   10   1    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1   10   1     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1   10   1     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1   10   1    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1   10   1     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1   10   1    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1   10   1    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1   10   1    19    1   Strobe for S-ray trigger (Hel +)
trigger-3 1   10   1    21    1   copy of trigger-3 on R-arm (Hel +)
trigger-4 1   10   1    22    1   copy of trigger-4 on R-arm (Hel +)
trigger-1 -1   10   3     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1   10   3     1    1   trigger 2 on Right Arm (Hel -)
clock     -1   10   3     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1   10   3     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1   10   3    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1   10   3    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1   10   3     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1   10   3     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1   10   3    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1   10   3     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1   10   3    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1   10   3    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1   10   3    19    1   Strobe for S-ray trigger (Hel -)
trigger-3 -1   10   3    21    1   copy of trigger-3 on R-arm (Hel -)
trigger-4 -1   10   3    22    1   copy of trigger-4 on R-arm (Hel -)
# ROC11 synchronous readout. Correspondence of slot to header is in THaCrateMap.
trigger-1 0    11   2     0    1   trigger 1 measured on Left Arm (synch events)
trigger-2 0    11   2     1    1   trigger 2 measured on Left Arm (synch events)
trigger-3 0    11   2     2    1   trigger 3 on Left Arm (synch events)
trigger-4 0    11   2     3    1   trigger 4 on Left Arm (synch events)
trigger-5 0    11   2     4    1   trigger 5 measured on Left Arm (synch events)
trigger-6 0    11   2    16    1   trigger 6
trigger-7 0    11   2    17    1   trigger 7
clock     0    11   2     7    1   1024 Hz clock (T8)
trigger-8 0    11   2     7    1   1024 Hz trigger 8
TS-accept 0    11   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    11   2    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    11   2     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    11   2     11    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    11   2    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    11   2    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    11   2    11    1   Beam current, downstream cavity, gain = 10
strobe    0    11   2    19    1   Strobe for S-ray trigger
mlut3     0    11   2    24    1   MLU formed T3 (not main trigger)
unser     0    11   2    14    1   Unser monitor
trigger-1 1    11   1     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    11   1     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    11   1     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    11   1     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    11   1     4    1   trigger 5 measured on Left Arm (Hel +)
trigger-6 1    11   1    16    1   trigger 6 (Hel +)
trigger-7 1    11   1    17    1   trigger 7 (Hel +)
clock     1    11   1     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    11   1     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    11   1    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    11   1    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    11   1     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    11   1     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    11   1    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    11   1    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    11   1    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
q10abusy  1    11   1    16    1   Q10 signal gated by Trigger Supervisor busy (Hel +)
clkabusy  1    11   1    17    1   Clock gated by Trigger Supervisor busy (Hel +)
strobe    1    11   1    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    11   1    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    11   1    14    1   Unser monitor (Hel +)
trigger-1 -1    11   3     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    11   3     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    11   3     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    11   3     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    11   3     4    1   trigger 5 measured on Left Arm (Hel -)
trigger-6 -1    11   3    16    1   trigger 6 (Hel -)
trigger-7 -1    11   3    17    1   trigger 7 (Hel -)
clock     -1    11   3     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    11   3     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    11   3    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    11   3    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    11   3     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    11   3     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    11   3    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    11   3    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    11   3    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
q10abusy  -1    11   3    16    1   Q10 signal gated by Trigger Supervisor busy (Hel -)
clkabusy  -1    11   3    17    1   Clock gated by Trigger Supervisor busy (Hel -)
strobe    -1    11   3    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    11   3    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    11   3    14    1   Unser monitor (Hel -)
# The rest is event type 140.  The slot is parsed from the header.
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s1R       0    7   0     8    6   S1 Scintillator Right PMTs on Right Arm
s1        0    7   0    16    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   1     0   32   S2m Scintillator on Right Arm
gasC      0    7   2     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
mlut1     0    7   8    24    1   MLU formed T1 (not main trigger)
strobe    0    7   8    19    1   Strobe for S-ray trigger
trigger-1 1    7   7     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1    7   7     1    1   trigger 2 on Right Arm (Hel +)
clock     1    7   7     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    7   7     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    7   7    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    7   7    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    7   7     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    7   7     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    7   7    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    7   7     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    7   7    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1    7   7    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1    7   7    19    1   Strobe for S-ray trigger (Hel +)
trigger-1 -1    7   9     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1    7   9     1    1   trigger 2 on Right Arm (Hel -)
clock     -1    7   9     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    7   9     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    7   9    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    7   9    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    7   9     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    7   9     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    7   9    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    7   9     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    7   9    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1    7   9    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1    7   9    19    1   Strobe for S-ray trigger (Hel -)
# Start of Left arm event 140 data
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s1R       0    8   0     8    6   S1 Scintillator Right PMTs on Left Arm
s1        0    8   1     0    6   S1 Paddles (Left.and.Right PMT) on Left Arm
s2        0    8   6     0   32   S2m Scintillator on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
trigger-6 0    8   4    16    1   trigger 6 
trigger-7 0    8   4    17    1   trigger 7 
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
strobe    0    8   4    19    1   Strobe for S-ray trigger
mlut3     0    8   4    24    1   MLU formed T3 (not main trigger)
unser     0    8   4    14    1   Unser monitor
trigger-1 1    8   3     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    8   3     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    8   3     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    8   3     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    8   3     4    1   trigger 5 measured on Left Arm (Hel +)
trigger-6 1    8   3    16    1   trigger 6 (Hel +) 
trigger-7 1    8   3    17    1   trigger 7 (Hel +)
clock     1    8   3     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    8   3     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    8   3    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    8   3    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    8   3     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    8   3     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    8   3    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    8   3    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    8   3    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
strobe    1    8   3    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    8   3    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    8   3    14    1   Unser monitor (Hel +)
trigger-1 -1    8   5     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    8   5     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    8   5     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    8   5     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    8   5     4    1   trigger 5 measured on Left Arm (Hel -)
trigger-6 -1    8   5    16    1   trigger 6 (Hel -) 
trigger-7 -1    8   5    17    1   trigger 7 (Hel -)
clock     -1    8   5     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    8   5     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    8   5    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    8   5    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    8   5     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    8   5     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    8   5    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    8   5    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    8   5    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
strobe    -1    8   5    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    8   5    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    8   5    14    1   Unser monitor (Hel -)
#
#
# ------- Jan 1, 2003
# desc  hel crate slot start nchan  long-description
DATE 1 1 2003
# ROC10 synchronous readout. Correspondence of slot to header is in THaCrateMap
trigger-1 0   10   2     0    1   trigger 1 on Right Arm
trigger-2 0   10   2     1    1   trigger 2 on Right Arm
clock     0   10   2     7    1   1024 Hz clock (T8)
trigger-8 0   10   2     7    1   1024 Hz trigger 8
TS-accept 0   10   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0   10   2    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0   10   2     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0   10   2     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0   10   2    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0   10   2     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0   10   2    10    1   Beam current, downstream cavity, gain = 10
mlut1     0   10   2    24    1   MLU formed T1 (not main trigger)
strobe    0   10   2    19    1   Strobe for S-ray trigger
trigger-3 0   10   2    21    1   copy of trigger 3 on R-arm
trigger-4 0   10   2    22    1   copy of trigger 4 on R-arm
trigger-1 1   10   1     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1   10   1     1    1   trigger 2 on Right Arm (Hel +)
clock     1   10   1     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1   10   1     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1   10   1    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1   10   1    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1   10   1     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1   10   1     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1   10   1    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1   10   1     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1   10   1    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1   10   1    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1   10   1    19    1   Strobe for S-ray trigger (Hel +)
trigger-3 1   10   1    21    1   copy of trigger-3 on R-arm (Hel +)
trigger-4 1   10   1    22    1   copy of trigger-4 on R-arm (Hel +)
trigger-1 -1   10   3     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1   10   3     1    1   trigger 2 on Right Arm (Hel -)
clock     -1   10   3     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1   10   3     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1   10   3    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1   10   3    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1   10   3     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1   10   3     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1   10   3    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1   10   3     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1   10   3    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1   10   3    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1   10   3    19    1   Strobe for S-ray trigger (Hel -)
trigger-3 -1   10   3    21    1   copy of trigger-3 on R-arm (Hel -)
trigger-4 -1   10   3    22    1   copy of trigger-4 on R-arm (Hel -)
# ROC11 synchronous readout. Correspondence of slot to header is in THaCrateMap.
trigger-1 0    11   2     0    1   trigger 1 measured on Left Arm (synch events)
trigger-2 0    11   2     1    1   trigger 2 measured on Left Arm (synch events)
trigger-3 0    11   2     2    1   trigger 3 on Left Arm (synch events)
trigger-4 0    11   2     3    1   trigger 4 on Left Arm (synch events)
trigger-5 0    11   2     4    1   trigger 5 measured on Left Arm (synch events)
clock     0    11   2     7    1   1024 Hz clock (T8)
trigger-8 0    11   2     7    1   1024 Hz trigger 8
TS-accept 0    11   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    11   2    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    11   2     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    11   2     11    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    11   2    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    11   2    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    11   2    11    1   Beam current, downstream cavity, gain = 10
q10abusy  0    11   2    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy  0    11   2    17    1   Clock gated by Trigger Supervisor busy
strobe    0    11   2    19    1   Strobe for S-ray trigger
mlut3     0    11   2    24    1   MLU formed T3 (not main trigger)
unser     0    11   2    14    1   Unser monitor
trigger-1 1    11   1     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    11   1     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    11   1     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    11   1     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    11   1     4    1   trigger 5 measured on Left Arm (Hel +)
clock     1    11   1     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    11   1     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    11   1    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    11   1    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    11   1     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    11   1     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    11   1    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    11   1    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    11   1    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
q10abusy  1    11   1    16    1   Q10 signal gated by Trigger Supervisor busy (Hel +)
clkabusy  1    11   1    17    1   Clock gated by Trigger Supervisor busy (Hel +)
strobe    1    11   1    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    11   1    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    11   1    14    1   Unser monitor (Hel +)
trigger-1 -1    11   3     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    11   3     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    11   3     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    11   3     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    11   3     4    1   trigger 5 measured on Left Arm (Hel -)
clock     -1    11   3     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    11   3     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    11   3    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    11   3    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    11   3     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    11   3     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    11   3    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    11   3    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    11   3    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
q10abusy  -1    11   3    16    1   Q10 signal gated by Trigger Supervisor busy (Hel -)
clkabusy  -1    11   3    17    1   Clock gated by Trigger Supervisor busy (Hel -)
strobe    -1    11   3    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    11   3    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    11   3    14    1   Unser monitor (Hel -)
# The rest is event type 140.  The slot is parsed from the header.
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s2L       0    7   0     8    5   S2 Scintillator Left PMTs on Right Arm
s2L       0    7   0    14    1   S2 Scintillator Left PMTs on Right Arm
s1R       0    7   0    16    6   S1 Scintillator Right PMTs on Right Arm
s2R       0    7   0    24    5   S2 Scintillator Right PMTs on Right Arm
s2R       0    7   0    30    1   S2 Scintillator Right PMTs on Right Arm
s1        0    7   2     0    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2     8    5   S2 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2    14    1   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   3     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
trigger-3 0    7   8    21    1   trigger 3
trigger-4 0    7   8    22    1   trigger 4
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
mlut1     0    7   8    24    1   MLU formed T1 (not main trigger)
strobe    0    7   8    19    1   Strobe for S-ray trigger
trigger-1 1    7   7     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1    7   7     1    1   trigger 2 on Right Arm (Hel +)
trigger-3 1    7   7    21    1   trigger 3 (Hel +)
trigger-4 1    7   7    22    1   trigger 4 (Hel +)
clock     1    7   7     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    7   7     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    7   7    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    7   7    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    7   7     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    7   7     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    7   7    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    7   7     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    7   7    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1    7   7    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1    7   7    19    1   Strobe for S-ray trigger (Hel +)
trigger-1 -1    7   9     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1    7   9     1    1   trigger 2 on Right Arm (Hel -)
trigger-3 -1    7   9    21    1   trigger 3
trigger-4 -1    7   9    22    1   trigger 4
clock     -1    7   9     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    7   9     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    7   9    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    7   9    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    7   9     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    7   9     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    7   9    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    7   9     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    7   9    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1    7   9    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1    7   9    19    1   Strobe for S-ray trigger (Hel -)
# Start of Left arm event 140 data
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s2L       0    8   0     8    6   S2 Scintillator Left PMTs on Left Arm
s1R       0    8   1     0    6   S1 Scintillator Right PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s1        0    8   2     0    6   S1 Paddles (Left.and.Right PMT) on Left Arm
s2        0    8   2     8    6   S2 Paddles (Left.and.Right PMT) on Left Arm
gasC      0    8   6     0   11   Gas Cerenkov PMT on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
q10abusy  0    8   4    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy  0    8   4    17    1   Clock gated by Trigger Supervisor busy
strobe    0    8   4    19    1   Strobe for S-ray trigger
mlut3     0    8   4    24    1   MLU formed T3 (not main trigger)
unser     0    8   4    14    1   Unser monitor
trigger-1 1    8   3     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    8   3     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    8   3     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    8   3     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    8   3     4    1   trigger 5 measured on Left Arm (Hel +)
clock     1    8   3     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    8   3     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    8   3    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    8   3    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    8   3     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    8   3     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    8   3    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    8   3    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    8   3    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
q10abusy  1    8   3    16    1   Q10 signal gated by Trigger Supervisor busy (Hel +)
clkabusy  1    8   3    17    1   Clock gated by Trigger Supervisor busy (Hel +)
strobe    1    8   3    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    8   3    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    8   3    14    1   Unser monitor (Hel +)
trigger-1 -1    8   5     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    8   5     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    8   5     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    8   5     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    8   5     4    1   trigger 5 measured on Left Arm (Hel -)
clock     -1    8   5     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    8   5     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    8   5    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    8   5    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    8   5     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    8   5     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    8   5    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    8   5    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    8   5    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
q10abusy  -1    8   5    16    1   Q10 signal gated by Trigger Supervisor busy (Hel -)
clkabusy  -1    8   5    17    1   Clock gated by Trigger Supervisor busy (Hel -)
strobe    -1    8   5    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    8   5    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    8   5    14    1   Unser monitor (Hel -)
#
# ------- Sept 1, 2002
# desc  hel crate slot start nchan  long-description
DATE 1 9 2002
# ROC10 synchronous readout. Correspondence of slot to header is in THaCrateMap
trigger-1 0   10   2     0    1   trigger 1 on Right Arm
trigger-2 0   10   2     1    1   trigger 2 on Right Arm
clock     0   10   2     7    1   1024 Hz clock (T8)
trigger-8 0   10   2     7    1   1024 Hz trigger 8
TS-accept 0   10   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0   10   2    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0   10   2     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0   10   2     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0   10   2    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0   10   2     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0   10   2    10    1   Beam current, downstream cavity, gain = 10
mlut1     0   10   2    24    1   MLU formed T1 (not main trigger)
strobe    0   10   2    19    1   Strobe for S-ray trigger
trigger-1 1   10   1     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1   10   1     1    1   trigger 2 on Right Arm (Hel +)
clock     1   10   1     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1   10   1     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1   10   1    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1   10   1    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1   10   1     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1   10   1     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1   10   1    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1   10   1     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1   10   1    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1   10   1    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1   10   1    19    1   Strobe for S-ray trigger (Hel +)
trigger-1 -1   10   3     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1   10   3     1    1   trigger 2 on Right Arm (Hel -)
clock     -1   10   3     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1   10   3     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1   10   3    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1   10   3    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1   10   3     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1   10   3     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1   10   3    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1   10   3     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1   10   3    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1   10   3    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1   10   3    19    1   Strobe for S-ray trigger (Hel -)
# ROC11 synchronous readout. Correspondence of slot to header is in THaCrateMap.
trigger-1 0    11   2     0    1   trigger 1 measured on Left Arm (synch events)
trigger-2 0    11   2     1    1   trigger 2 measured on Left Arm (synch events)
trigger-3 0    11   2     2    1   trigger 3 on Left Arm (synch events)
trigger-4 0    11   2     3    1   trigger 4 on Left Arm (synch events)
trigger-5 0    11   2     4    1   trigger 5 measured on Left Arm (synch events)
clock     0    11   2     7    1   1024 Hz clock (T8)
trigger-8 0    11   2     7    1   1024 Hz trigger 8
TS-accept 0    11   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    11   2    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    11   2     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    11   2     11    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    11   2    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    11   2    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    11   2    11    1   Beam current, downstream cavity, gain = 10
q10abusy  0    11   2    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy  0    11   2    17    1   Clock gated by Trigger Supervisor busy
strobe    0    11   2    19    1   Strobe for S-ray trigger
mlut3     0    11   2    24    1   MLU formed T3 (not main trigger)
unser     0    11   2    14    1   Unser monitor
trigger-1 1    11   1     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    11   1     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    11   1     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    11   1     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    11   1     4    1   trigger 5 measured on Left Arm (Hel +)
clock     1    11   1     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    11   1     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    11   1    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    11   1    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    11   1     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    11   1     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    11   1    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    11   1    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    11   1    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
q10abusy  1    11   1    16    1   Q10 signal gated by Trigger Supervisor busy (Hel +)
clkabusy  1    11   1    17    1   Clock gated by Trigger Supervisor busy (Hel +)
strobe    1    11   1    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    11   1    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    11   1    14    1   Unser monitor (Hel +)
trigger-1 -1    11   3     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    11   3     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    11   3     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    11   3     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    11   3     4    1   trigger 5 measured on Left Arm (Hel -)
clock     -1    11   3     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    11   3     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    11   3    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    11   3    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    11   3     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    11   3     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    11   3    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    11   3    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    11   3    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
q10abusy  -1    11   3    16    1   Q10 signal gated by Trigger Supervisor busy (Hel -)
clkabusy  -1    11   3    17    1   Clock gated by Trigger Supervisor busy (Hel -)
strobe    -1    11   3    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    11   3    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    11   3    14    1   Unser monitor (Hel -)
# The rest is event type 140.  The slot is parsed from the header.
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s2L       0    7   0     8    5   S2 Scintillator Left PMTs on Right Arm
s2L       0    7   0    14    1   S2 Scintillator Left PMTs on Right Arm
s1R       0    7   0    16    6   S1 Scintillator Right PMTs on Right Arm
s2R       0    7   0    24    5   S2 Scintillator Right PMTs on Right Arm
s2R       0    7   0    30    1   S2 Scintillator Right PMTs on Right Arm
s1        0    7   2     0    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2     8    5   S2 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2    14    1   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   3     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
mlut1     0    7   8    24    1   MLU formed T1 (not main trigger)
strobe    0    7   8    19    1   Strobe for S-ray trigger
trigger-1 1    7   7     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1    7   7     1    1   trigger 2 on Right Arm (Hel +)
clock     1    7   7     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    7   7     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    7   7    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    7   7    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    7   7     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    7   7     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    7   7    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    7   7     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    7   7    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1    7   7    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1    7   7    19    1   Strobe for S-ray trigger (Hel +)
trigger-1 -1    7   9     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1    7   9     1    1   trigger 2 on Right Arm (Hel -)
clock     -1    7   9     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    7   9     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    7   9    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    7   9    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    7   9     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    7   9     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    7   9    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    7   9     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    7   9    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1    7   9    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1    7   9    19    1   Strobe for S-ray trigger (Hel -)
# Start of Left arm event 140 data
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s2L       0    8   0     8    6   S2 Scintillator Left PMTs on Left Arm
s1R       0    8   1     0    6   S1 Scintillator Right PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s1        0    8   2     0    6   S1 Paddles (Left.and.Right PMT) on Left Arm
s2        0    8   2     8    6   S2 Paddles (Left.and.Right PMT) on Left Arm
gasC      0    8   6     0   11   Gas Cerenkov PMT on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
q10abusy  0    8   4    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy  0    8   4    17    1   Clock gated by Trigger Supervisor busy
strobe    0    8   4    19    1   Strobe for S-ray trigger
mlut3     0    8   4    24    1   MLU formed T3 (not main trigger)
unser     0    8   4    14    1   Unser monitor
trigger-1 1    8   3     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    8   3     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    8   3     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    8   3     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    8   3     4    1   trigger 5 measured on Left Arm (Hel +)
clock     1    8   3     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    8   3     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    8   3    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    8   3    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    8   3     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    8   3     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    8   3    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    8   3    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    8   3    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
q10abusy  1    8   3    16    1   Q10 signal gated by Trigger Supervisor busy (Hel +)
clkabusy  1    8   3    17    1   Clock gated by Trigger Supervisor busy (Hel +)
strobe    1    8   3    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    8   3    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    8   3    14    1   Unser monitor (Hel +)
trigger-1 -1    8   5     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    8   5     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    8   5     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    8   5     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    8   5     4    1   trigger 5 measured on Left Arm (Hel -)
clock     -1    8   5     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    8   5     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    8   5    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    8   5    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    8   5     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    8   5     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    8   5    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    8   5    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    8   5    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
q10abusy  -1    8   5    16    1   Q10 signal gated by Trigger Supervisor busy (Hel -)
clkabusy  -1    8   5    17    1   Clock gated by Trigger Supervisor busy (Hel -)
strobe    -1    8   5    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    8   5    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    8   5    14    1   Unser monitor (Hel -)
#
# ------- Dec 31, 2001 
# desc  hel crate slot start nchan  long-description
DATE 31 12 2001
trigger-1 0    11   2     0    1   trigger 1 measured on Left Arm (synch events)
trigger-2 0    11   2     1    1   trigger 2 measured on Left Arm (synch events)
trigger-3 0    11   2     2    1   trigger 3 on Left Arm (synch events)
trigger-4 0    11   2     3    1   trigger 4 on Left Arm (synch events)
trigger-5 0    11   2     4    1   trigger 5 measured on Left Arm (synch events)
clock     0    11   2     7    1   1024 Hz clock (T8)
trigger-8 0    11   2     7    1   1024 Hz trigger 8
TS-accept 0    11   2    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    11   2    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    11   2     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    11   2     11    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    11   2    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    11   2    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    11   2    11    1   Beam current, downstream cavity, gain = 10
q10abusy  0    11   2    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy  0    11   2    17    1   Clock gated by Trigger Supervisor busy
strobe    0    11   2    19    1   Strobe for S-ray trigger
mlut3     0    11   2    24    1   MLU formed T3 (not main trigger)
unser     0    11   2    14    1   Unser monitor
trigger-1 1    11   1     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    11   1     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    11   1     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    11   1     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    11   1     4    1   trigger 5 measured on Left Arm (Hel +)
clock     1    11   1     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    11   1     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    11   1    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    11   1    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    11   1     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    11   1     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    11   1    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    11   1    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    11   1    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
q10abusy  1    11   1    16    1   Q10 signal gated by Trigger Supervisor busy (Hel +)
clkabusy  1    11   1    17    1   Clock gated by Trigger Supervisor busy (Hel +)
strobe    1    11   1    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    11   1    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    11   1    14    1   Unser monitor (Hel +)
trigger-1 -1    11   3     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    11   3     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    11   3     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    11   3     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    11   3     4    1   trigger 5 measured on Left Arm (Hel -)
clock     -1    11   3     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    11   3     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    11   3    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    11   3    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    11   3     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    11   3     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    11   3    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    11   3    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    11   3    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
q10abusy  -1    11   3    16    1   Q10 signal gated by Trigger Supervisor busy (Hel -)
clkabusy  -1    11   3    17    1   Clock gated by Trigger Supervisor busy (Hel -)
strobe    -1    11   3    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    11   3    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    11   3    14    1   Unser monitor (Hel -)
rcs1      0    9   0     0   31   RCS scalers 1 ==>  gsum 1 - 32
rcs2      0    9   1     0   31   RCS scalers 2 ==>  gsum 33 - 56 and misc 1 - 8
rcs3      0    9   2     0   31   RCS scalers 3 ==>  Triggers and Veto
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s2L       0    7   0     8    5   S2 Scintillator Left PMTs on Right Arm
s2L       0    7   0    14    1   S2 Scintillator Left PMTs on Right Arm
s1R       0    7   0    16    6   S1 Scintillator Right PMTs on Right Arm
s2R       0    7   0    24    5   S2 Scintillator Right PMTs on Right Arm
s2R       0    7   0    30    1   S2 Scintillator Right PMTs on Right Arm
s1        0    7   2     0    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2     8    5   S2 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2    14    1   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   3     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
mlut1     0    7   8    24    1   MLU formed T1 (not main trigger)
strobe    0    7   8    19    1   Strobe for S-ray trigger
trigger-1 1    7   7     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1    7   7     1    1   trigger 2 on Right Arm (Hel +)
clock     1    7   7     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    7   7     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    7   7    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    7   7    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    7   7     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    7   7     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    7   7    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    7   7     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    7   7    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1    7   7    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1    7   7    19    1   Strobe for S-ray trigger (Hel +)
trigger-1 -1    7   9     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1    7   9     1    1   trigger 2 on Right Arm (Hel -)
clock     -1    7   9     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    7   9     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    7   9    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    7   9    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    7   9     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    7   9     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    7   9    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    7   9     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    7   9    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1    7   9    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1    7   9    19    1   Strobe for S-ray trigger (Hel -)
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s2L       0    8   0     8    6   S2 Scintillator Left PMTs on Left Arm
s1R       0    8   1     0    6   S1 Scintillator Right PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s1        0    8   2     0    6   S1 Paddles (Left.and.Right PMT) on Left Arm
s2        0    8   2     8    6   S2 Paddles (Left.and.Right PMT) on Left Arm
gasC      0    8   6     0   11   Gas Cerenkov PMT on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
q10abusy  0    8   4    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy  0    8   4    17    1   Clock gated by Trigger Supervisor busy
strobe    0    8   4    19    1   Strobe for S-ray trigger
mlut3     0    8   4    24    1   MLU formed T3 (not main trigger)
unser     0    8   4    14    1   Unser monitor
trigger-1 1    8   3     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    8   3     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    8   3     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    8   3     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    8   3     4    1   trigger 5 measured on Left Arm (Hel +)
clock     1    8   3     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    8   3     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    8   3    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    8   3    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    8   3     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    8   3     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    8   3    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    8   3    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    8   3    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
q10abusy  1    8   3    16    1   Q10 signal gated by Trigger Supervisor busy (Hel +)
clkabusy  1    8   3    17    1   Clock gated by Trigger Supervisor busy (Hel +)
strobe    1    8   3    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    8   3    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    8   3    14    1   Unser monitor (Hel +)
trigger-1 -1    8   5     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    8   5     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    8   5     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    8   5     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    8   5     4    1   trigger 5 measured on Left Arm (Hel -)
clock     -1    8   5     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    8   5     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    8   5    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    8   5    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    8   5     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    8   5     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    8   5    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    8   5    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    8   5    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
q10abusy  -1    8   5    16    1   Q10 signal gated by Trigger Supervisor busy (Hel -)
clkabusy  -1    8   5    17    1   Clock gated by Trigger Supervisor busy (Hel -)
strobe    -1    8   5    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    8   5    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    8   5    14    1   Unser monitor (Hel -)
#
# ------- Sept 17, 2001 
# desc  hel crate slot start nchan  long-description
DATE 17 9 2001
rcs1      0    9   0     0   31   RCS scalers 1 ==>  gsum 1 - 32
rcs2      0    9   1     0   31   RCS scalers 2 ==>  gsum 33 - 56 and misc 1 - 8
rcs3      0    9   2     0   31   RCS scalers 3 ==>  Triggers and Veto
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s2L       0    7   0     8    5   S2 Scintillator Left PMTs on Right Arm
s2L       0    7   0    14    1   S2 Scintillator Left PMTs on Right Arm
s1R       0    7   0    16    6   S1 Scintillator Right PMTs on Right Arm
s2R       0    7   0    24    5   S2 Scintillator Right PMTs on Right Arm
s2R       0    7   0    30    1   S2 Scintillator Right PMTs on Right Arm
s1        0    7   2     0    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2     8    5   S2 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2    14    1   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   3     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
mlut1     0    7   8    24    1   MLU formed T1 (not main trigger)
strobe    0    7   8    19    1   Strobe for S-ray trigger
trigger-1 1    7   7     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1    7   7     1    1   trigger 2 on Right Arm (Hel +)
clock     1    7   7     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    7   7     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    7   7    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    7   7    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    7   7     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    7   7     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    7   7    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    7   7     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    7   7    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1    7   7    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1    7   7    19    1   Strobe for S-ray trigger (Hel +)
trigger-1 -1    7   9     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1    7   9     1    1   trigger 2 on Right Arm (Hel -)
clock     -1    7   9     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    7   9     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    7   9    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    7   9    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    7   9     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    7   9     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    7   9    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    7   9     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    7   9    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1    7   9    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1    7   9    19    1   Strobe for S-ray trigger (Hel -)
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s2L       0    8   0     8    6   S2 Scintillator Left PMTs on Left Arm
s1R       0    8   1     0    6   S1 Scintillator Right PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s1        0    8   2     0    6   S1 Paddles (Left.and.Right PMT) on Left Arm
s2        0    8   2     8    6   S2 Paddles (Left.and.Right PMT) on Left Arm
gasC      0    8   6     0   11   Gas Cerenkov PMT on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
q10abusy  0    8   4    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy  0    8   4    17    1   Clock gated by Trigger Supervisor busy
strobe    0    8   4    19    1   Strobe for S-ray trigger
mlut3     0    8   4    24    1   MLU formed T3 (not main trigger)
unser     0    8   4    14    1   Unser monitor
trigger-1 1    8   3     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    8   3     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    8   3     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    8   3     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    8   3     4    1   trigger 5 measured on Left Arm (Hel +)
clock     1    8   3     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    8   3     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    8   3    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    8   3    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    8   3     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    8   3     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    8   3    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    8   3    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    8   3    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
q10abusy  1    8   3    16    1   Q10 signal gated by Trigger Supervisor busy (Hel +)
clkabusy  1    8   3    17    1   Clock gated by Trigger Supervisor busy (Hel +)
strobe    1    8   3    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    8   3    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    8   3    14    1   Unser monitor (Hel +)
trigger-1 -1    8   5     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    8   5     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    8   5     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    8   5     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    8   5     4    1   trigger 5 measured on Left Arm (Hel -)
clock     -1    8   5     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    8   5     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    8   5    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    8   5    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    8   5     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    8   5     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    8   5    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    8   5    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    8   5    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
q10abusy  -1    8   5    16    1   Q10 signal gated by Trigger Supervisor busy (Hel -)
clkabusy  -1    8   5    17    1   Clock gated by Trigger Supervisor busy (Hel -)
strobe    -1    8   5    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    8   5    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    8   5    14    1   Unser monitor (Hel -)
#
#
# ------- from May 15 2001 
# desc  hel crate slot start nchan  long-description
DATE 15 5 2001
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s2L       0    7   0     8    5   S2 Scintillator Left PMTs on Right Arm
s2L       0    7   0    14    1   S2 Scintillator Left PMTs on Right Arm
s1R       0    7   0    16    6   S1 Scintillator Right PMTs on Right Arm
s2R       0    7   0    24    5   S2 Scintillator Right PMTs on Right Arm
s2R       0    7   0    30    1   S2 Scintillator Right PMTs on Right Arm
s1        0    7   2     0    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2     8    5   S2 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2    14    1   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   3     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 on Right Arm
trigger-2 0    7   8     1    1   trigger 2 on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
TS-accept 0    7   8    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    7   8    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8     2    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8     9    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    10    1   Beam current, downstream cavity, gain = 10
mlut1     0    7   8    24    1   MLU formed T1 (not main trigger)
strobe    0    7   8    19    1   Strobe for S-ray trigger
trigger-1 1    7   7     0    1   trigger 1 on Right Arm (Hel +)
trigger-2 1    7   7     1    1   trigger 2 on Right Arm (Hel +)
clock     1    7   7     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    7   7     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    7   7    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    7   7    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    7   7     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    7   7     2    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    7   7    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    7   7     9    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    7   7    10    1   Beam current, downstream cavity, gain = 10 (Hel +)
mlut1     1    7   7    24    1   MLU formed T1 (not main trigger) (Hel +)
strobe    1    7   7    19    1   Strobe for S-ray trigger (Hel +)
trigger-1 -1    7   9     0    1   trigger 1 on Right Arm (Hel -)
trigger-2 -1    7   9     1    1   trigger 2 on Right Arm (Hel -)
clock     -1    7   9     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    7   9     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    7   9    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    7   9    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    7   9     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    7   9     2    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    7   9    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    7   9     9    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    7   9    10    1   Beam current, downstream cavity, gain = 10 (Hel -)
mlut1     -1    7   9    24    1   MLU formed T1 (not main trigger) (Hel -)
strobe    -1    7   9    19    1   Strobe for S-ray trigger (Hel -)
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s2L       0    8   0     8    6   S2 Scintillator Left PMTs on Left Arm
s1R       0    8   1     0    6   S1 Scintillator Right PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s1        0    8   2     0    6   S1 Paddles (Left.and.Right PMT) on Left Arm
s2        0    8   2     8    6   S2 Paddles (Left.and.Right PMT) on Left Arm
gasC      0    8   6     0   11   Gas Cerenkov PMT on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 on Left Arm
trigger-4 0    8   4     3    1   trigger 4 on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
q10abusy  0    8   4    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy  0    8   4    17    1   Clock gated by Trigger Supervisor busy
strobe    0    8   4    19    1   Strobe for S-ray trigger
mlut3     0    8   4    24    1   MLU formed T3 (not main trigger)
unser     0    8   4    14    1   Unser monitor
trigger-1 1    8   3     0    1   trigger 1 measured on Left Arm (Hel +)
trigger-2 1    8   3     1    1   trigger 2 measured on Left Arm (Hel +)
trigger-3 1    8   3     2    1   trigger 3 on Left Arm (Hel +)
trigger-4 1    8   3     3    1   trigger 4 on Left Arm (Hel +)
trigger-5 1    8   3     4    1   trigger 5 measured on Left Arm (Hel +)
clock     1    8   3     7    1   1024 Hz clock (T8) (Hel +)
trigger-8 1    8   3     7    1   1024 Hz trigger 8 (Hel +)
TS-accept 1    8   3    12    1   Trigger Supervisor accepted triggers (Hel +) 
bcm_u1    1    8   3    13    1   Beam current, upstream cavity, gain = 1 (Hel +)
bcm_u3    1    8   3     6    1   Beam current, upstream cavity, gain = 3 (Hel +)
bcm_u10   1    8   3     8    1   Beam current, upstream cavity, gain = 10 (Hel +)
bcm_d1    1    8   3    15    1   Beam current, downstream cavity, gain = 1 (Hel +)
bcm_d3    1    8   3    10    1   Beam current, downstream cavity, gain = 3 (Hel +)
bcm_d10   1    8   3    11    1   Beam current, downstream cavity, gain = 10 (Hel +)
q10abusy  1    8   3    16    1   Q10 signal gated by Trigger Supervisor busy (Hel +)
clkabusy  1    8   3    17    1   Clock gated by Trigger Supervisor busy (Hel +)
strobe    1    8   3    19    1   Strobe for S-ray trigger (Hel +)
mlut3     1    8   3    24    1   MLU formed T3 (not main trigger) (Hel +)
unser     1    8   3    14    1   Unser monitor (Hel +)
trigger-1 -1    8   5     0    1   trigger 1 measured on Left Arm (Hel -)
trigger-2 -1    8   5     1    1   trigger 2 measured on Left Arm (Hel -)
trigger-3 -1    8   5     2    1   trigger 3 on Left Arm (Hel -)
trigger-4 -1    8   5     3    1   trigger 4 on Left Arm (Hel -)
trigger-5 -1    8   5     4    1   trigger 5 measured on Left Arm (Hel -)
clock     -1    8   5     7    1   1024 Hz clock (T8) (Hel -)
trigger-8 -1    8   5     7    1   1024 Hz trigger 8 (Hel -)
TS-accept -1    8   5    12    1   Trigger Supervisor accepted triggers (Hel -) 
bcm_u1    -1    8   5    13    1   Beam current, upstream cavity, gain = 1 (Hel -)
bcm_u3    -1    8   5     6    1   Beam current, upstream cavity, gain = 3 (Hel -)
bcm_u10   -1    8   5     8    1   Beam current, upstream cavity, gain = 10 (Hel -)
bcm_d1    -1    8   5    15    1   Beam current, downstream cavity, gain = 1 (Hel -)
bcm_d3    -1    8   5    10    1   Beam current, downstream cavity, gain = 3 (Hel -)
bcm_d10   -1    8   5    11    1   Beam current, downstream cavity, gain = 10 (Hel -)
q10abusy  -1    8   5    16    1   Q10 signal gated by Trigger Supervisor busy (Hel -)
clkabusy  -1    8   5    17    1   Clock gated by Trigger Supervisor busy (Hel -)
strobe    -1    8   5    19    1   Strobe for S-ray trigger (Hel -)
mlut3     -1    8   5    24    1   MLU formed T3 (not main trigger) (Hel -)
unser     -1    8   5    14    1   Unser monitor (Hel -)
#
#
# -------  Jan 1, 2001 to May 15, 2001 (reminder: channel index 0 = 1st) ----
# desc  hel crate slot start nchan  long-description
DATE 1 1 2001
s1L       0    7   0     0    6   S1 Scintillator Left PMTs on Right Arm
s2L       0    7   0     8    5   S2 Scintillator Left PMTs on Right Arm
s2L       0    7   0    14    1   S2 Scintillator Left PMTs on Right Arm
s1R       0    7   0    16    6   S1 Scintillator Right PMTs on Right Arm
s2R       0    7   0    24    5   S2 Scintillator Right PMTs on Right Arm
s2R       0    7   0    30    1   S2 Scintillator Right PMTs on Right Arm
s1        0    7   2     0    6   S1 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2     8    5   S2 Paddles (Left.and.Right PMT) on Right Arm
s2        0    7   2    14    1   S2 Paddles (Left.and.Right PMT) on Right Arm
gasC      0    7   3     0   11   Gas Cerenkov PMT on Right Arm
trigger-1 0    7   8     0    1   trigger 1 measured on Right Arm
trigger-2 0    7   8     1    1   trigger 2 measured on Right Arm
clock     0    7   8     7    1   1024 Hz clock (T8)
trigger-8 0    7   8     7    1   1024 Hz trigger 8
bcm_u1    0    7   8    29    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    7   8    22    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    7   8    18    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    7   8    31    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    7   8    25    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    7   8    26    1   Beam current, downstream cavity, gain = 10
sray      0    7   8     6    1   S-ray trigger (not main trigger)
strobe    0    7   8    19    1   Strobe for S-ray trigger
edtpulser 0    7   7    16    1   Electronics deadtime pulser on Right Arm
edtatrig  0    7   7    17    1   EDT pulser anded with trigger on Right Arm
s1L       0    8   0     0    6   S1 Scintillator Left PMTs on Left Arm
s2L       0    8   0     8    6   S2 Scintillator Left PMTs on Left Arm
s1R       0    8   1     0    6   S1 Scintillator Right PMTs on Left Arm
s2R       0    8   1     8    6   S2 Scintillator Right PMTs on Left Arm
s1        0    8   2     0    6   S1 Paddles (Left.and.Right PMT) on Left Arm
s2        0    8   2     8    6   S2 Paddles (Left.and.Right PMT) on Left Arm
gasC      0    8   3     0   11   Gas Cerenkov PMT on Left Arm
trigger-1 0    8   4     0    1   trigger 1 measured on Left Arm
trigger-2 0    8   4     1    1   trigger 2 measured on Left Arm
trigger-3 0    8   4     2    1   trigger 3 measured on Left Arm
trigger-4 0    8   4     3    1   trigger 4 measured on Left Arm
trigger-5 0    8   4     4    1   trigger 5 measured on Left Arm
clock     0    8   4     7    1   1024 Hz clock (T8)
trigger-8 0    8   4     7    1   1024 Hz trigger 8
TS-accept 0    8   4    12    1   Trigger Supervisor accepted triggers 
bcm_u1    0    8   4    13    1   Beam current, upstream cavity, gain = 1
bcm_u3    0    8   4     6    1   Beam current, upstream cavity, gain = 3
bcm_u10   0    8   4     8    1   Beam current, upstream cavity, gain = 10
bcm_d1    0    8   4    15    1   Beam current, downstream cavity, gain = 1
bcm_d3    0    8   4    10    1   Beam current, downstream cavity, gain = 3
bcm_d10   0    8   4    11    1   Beam current, downstream cavity, gain = 10
edtpulser 0    8   4    21    1   Electronics deadtime pulser on Left Arm
edtatrig  0    8   4    22    1   EDT pulser anded with trigger on Left Arm
q10abusy  0    8   4    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy  0    8   4    17    1   Clock gated by Trigger Supervisor busy
strobe    0    8   4    19    1   Strobe for S-ray trigger
sray      0    8   4    24    1   S-ray trigger (not main trigger)
unser     0    8   4    14    1   Unser monitor
#
# ------ Nov 1 until Jan 1, 2000  (reminder: channel index 0 = 1st) 
# desc  hel crate slot start nchan  long-description
DATE 1 11 2000 
s1L        0    7    0     0    6   S1 R-Arm Scintillator Left PMTs
s2L        0    7    0     6    6   S2 R-Arm Scintillator Left PMTs
s1R        0    7    1     0    6   S1 R-Arm Scintillator Right PMTs
s2R        0    7    1     6    6   S2 R-Arm Scintillator Right PMTs
s1         0    7    2     0    6   S1 R-Arm Paddles (Left.and.Right PMT)
s2         0    7    2     6    6   S2 R-Arm Paddles (Left.and.Right PMT)
gasC       0    7    6     0   11   Gas Cerenkov on R-arm
strobe     0    7    4     3    1   Strobe for S-ray trigger on R-arm
trigger-1  1    7    7     0    1   trigger 1 measured on R-arm (pos helicity)
trigger-2  1    7    7     1    1   trigger 2 measured on R-arm (pos helicity)
trigger-3  1    7    7     2    1   trigger 3 measured on R-arm (pos helicity)
trigger-4  1    7    7     3    1   trigger 4 measured on R-arm (pos helicity)
trigger-5  1    7    7     4    1   trigger 5 measured on R-arm (pos helicity)
clock      1    7    7     7    1   clock, 1024 Hz (pos helicity)
bcm_u1     1    7    7    13    1   Beam current, upstream cavity, gain = 1  (pos helicity)
bcm_d1     1    7    7    15    1   Beam current, downstream cavity, gain = 1 (pos helicity)
bcm_u3     1    7    7     6    1   Beam current, upstream cavity, gain = 3 (pos helicity)
bcm_d3     1    7    7    10    1   Beam current, downstream cavity, gain = 3 (pos helicity)
bcm_u10    1    7    7     8    1   Beam current, upstream cavity, gain = 10 (pos helicity)
bcm_d10    1    7    7    11    1   Beam current, downstream cavity, gain = 10 (pos helicity)
unser      1    7    7    14    1   Unser monitor
TS-accept  1    7    7    12    1   Trigger Supervisor accepted triggers (pos helicity)
trigger-1  0    7    8     0    1   trigger 1 measured on R-arm (ungated by hel)
trigger-2  0    7    8     1    1   trigger 2 measured on R-arm  
trigger-3  0    7    8     2    1   trigger 3 measured on R-arm  
trigger-4  0    7    8     3    1   trigger 4 measured on R-arm  
trigger-5  0    7    8     4    1   trigger 5 measured on R-arm  
clock      0    7    8     7    1   clock, 1024 Hz  
bcm_u1     0    7    8    13    1   Beam current, upstream cavity, gain = 1   
bcm_d1     0    7    8    15    1   Beam current, downstream cavity, gain = 1  
bcm_u3     0    7    8     6    1   Beam current, upstream cavity, gain = 3  
bcm_d3     0    7    8    10    1   Beam current, downstream cavity, gain = 3  
bcm_u10    0    7    8     8    1   Beam current, upstream cavity, gain = 10  
bcm_d10    0    7    8    11    1   Beam current, downstream cavity, gain = 10
unser      0    7    8    14    1   Unser monitor
TS-accept  0    7    8    12    1   Trigger Supervisor accepted triggers  
edtpulser  0    7    8    16    1   Electronics deadtime pulser on Right Arm
edtatrig   0    7    8    17    1   EDT pulser anded with trigger on Right Arm
trigger-1 -1    7    9     0    1   trigger 1 measured on R-arm (neg helicity)
trigger-2 -1    7    9     1    1   trigger 2 measured on R-arm (neg helicity)
trigger-3 -1    7    9     2    1   trigger 3 measured on R-arm (neg helicity)
trigger-4 -1    7    9     3    1   trigger 4 measured on R-arm (neg helicity)
trigger-5 -1    7    9     4    1   trigger 5 measured on R-arm (neg helicity)
clock     -1    7    9     7    1   clock, 1024 Hz (neg helicity)
bcm_u1    -1    7    9    13    1   Beam current, upstream cavity, gain = 1  (neg helicity)
bcm_d1    -1    7    9    15    1   Beam current, downstream cavity, gain = 1 (neg helicity)
bcm_u3    -1    7    9     6    1   Beam current, upstream cavity, gain = 3 (neg helicity)
bcm_d3    -1    7    9    10    1   Beam current, downstream cavity, gain = 3 (neg helicity)
bcm_u10   -1    7    9     8    1   Beam current, upstream cavity, gain = 10 (neg helicity)
bcm_d10   -1    7    9    11    1   Beam current, downstream cavity, gain = 10 (neg helicity)
unser     -1    7    9    14    1   Unser monitor
TS-accept -1    7    9    12    1   Trigger Supervisor accepted triggers (neg helicity)
s1L        0    8    0     0    6   S1 L-Arm Scintillator Left PMTs
s2L        0    8    0     6    6   S2 L-Arm Scintillator Left PMTs
s1R        0    8    1     0    6   S1 L-Arm Scintillator Right PMTs
s2R        0    8    1     6    6   S2 L-Arm Scintillator Right PMTs
s1         0    8    2     0    6   S1 L-Arm Paddles (Left.and.Right PMT)
s2         0    8    2     6    6   S2 L-Arm Paddles (Left.and.Right PMT)
gasC       0    8    3     0   11   L-arm Gas Cerenkov PMT
trigger-1  0    8    4     0    1   Trigger 1 measured on L-arm
trigger-2  0    8    4     1    1   Trigger 2 measured on L-arm
helicity+  0    8    4     4    1   helicity plus counting
helicity-  0    8    4     5    1   helicity minus counting
clock      0    8    4     7    1   1024 Hz clock on L-arm
unser      0    8    4     8    1   Unser Monitor on L-arm
bcm_d1     0    8    4    15    1   Beam Current, Downstream Cavity, gain = 1
bcm_u1     0    8    4    13    1   Beam Current, Upstream Cavity, gain = 1
bcm_d3     0    8    4     9    1   Beam Current, Downstream Cavity, gain = 3
bcm_d10    0    8    4    10    1   Beam Current, Downstream Cavity, gain = 10
edtpulser  0    8    4    21    1   Electronics deadtime pulser on Left Arm
edtatrig   0    8    4    22    1   EDT pulser anded with trigger on Left Arm
q10abusy   0    8    4    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy   0    8    4    17    1   Clock gated by Trigger Supervisor busy
strobe     0    8    4    19    1   Strobe for S-ray trigger
trigger-1  1    8    5     0    1   Trigger 1 measured on L-arm (pos helicity)
trigger-2  1    8    5     1    1   Trigger 2 measured on L-arm (pos helicity)
helicity+  1    8    5     4    1   helicity plus counting (pos helicity)
helicity-  1    8    5     5    1   helicity minus counting (pos helicity)
clock      1    8    5     7    1   1024 Hz clock on L-arm (pos helicity)
unser      1    8    5     8    1   Unser Monitor on L-arm (pos helicity)
bcm_d1     1    8    5    15    1   Beam Current, Downstream Cavity, gain = 1 (pos helicity)
bcm_u1     1    8    5    13    1   Beam Current, Upstream Cavity, gain = 1 (pos helicity)
bcm_d3     1    8    5     9    1   Beam Current, Downstream Cavity, gain = 3 (pos helicity)
bcm_d10    1    8    5    10    1   Beam Current, Downstream Cavity, gain = 10 (pos helicity)
trigger-1 -1    8    6     0    1   Trigger 1 measured on L-arm (neg helicity)
trigger-2 -1    8    6     1    1   Trigger 2 measured on L-arm (neg helicity)
helicity+ -1    8    6     4    1   helicity plus counting (neg helicity)
helicity- -1    8    6     5    1   helicity minus counting (neg helicity)
clock     -1    8    6     7    1   1024 Hz clock on L-arm (neg helicity)
unser     -1    8    6     8    1   Unser Monitor on L-arm (neg helicity)
bcm_d1    -1    8    6    15    1   Beam Current, Downstream Cavity, gain = 1 (neg helicity)
bcm_u1    -1    8    6    13    1   Beam Current, Upstream Cavity, gain = 1 (neg helicity)
bcm_d3    -1    8    6     9    1   Beam Current, Downstream Cavity, gain = 3 (neg helicity)
bcm_d10   -1    8    6    10    1   Beam Current, Downstream Cavity, gain = 10 (neg helicity)

# ------ Sept 1 until Nov 1, 2000  (reminder: channel index 0 = 1st) 
# desc  hel crate slot start nchan  long-description
DATE 1 9 2000 
s1L        0    7    0     0    6   S1 R-Arm Scintillator Left PMTs
s2L        0    7    0     6    6   S2 R-Arm Scintillator Left PMTs
s1R        0    7    1     0    6   S1 R-Arm Scintillator Right PMTs
s2R        0    7    1     6    6   S2 R-Arm Scintillator Right PMTs
s1         0    7    2     0    6   S1 R-Arm Paddles (Left.and.Right PMT)
s2         0    7    2     6    6   S2 R-Arm Paddles (Left.and.Right PMT)
gasC       0    7    6     0   11   Gas Cerenkov on R-arm
strobe     0    7    4     3    1   Strobe for S-ray trigger on R-arm
trigger-1  0    7    7     0    1   trigger 1 measured on R-arm (ungated by hel)
trigger-2  0    7    7     1    1   trigger 2 measured on R-arm  
trigger-3  0    7    7     2    1   trigger 3 measured on R-arm  
trigger-4  0    7    7     3    1   trigger 4 measured on R-arm  
trigger-5  0    7    7     4    1   trigger 5 measured on R-arm  
clock      0    7    7     7    1   clock, 1024 Hz  
bcm_u1     0    7    7    13    1   Beam current, upstream cavity, gain = 1   
bcm_d1     0    7    7    15    1   Beam current, downstream cavity, gain = 1  
bcm_u3     0    7    7     6    1   Beam current, upstream cavity, gain = 3  
bcm_d3     0    7    7    10    1   Beam current, downstream cavity, gain = 3  
bcm_u10    0    7    7     8    1   Beam current, upstream cavity, gain = 10  
bcm_d10    0    7    7    11    1   Beam current, downstream cavity, gain = 10
unser      0    7    7    14    1   Unser monitor
TS-accept  0    7    7    12    1   Trigger Supervisor accepted triggers  
edtpulser  0    7    7    16    1   Electronics deadtime pulser on Right Arm
edtatrig   0    7    7    17    1   EDT pulser anded with trigger on Right Arm
s1L        0    8    0     0    6   S1 L-Arm Scintillator Left PMTs
s2L        0    8    0     6    6   S2 L-Arm Scintillator Left PMTs
s1R        0    8    1     0    6   S1 L-Arm Scintillator Right PMTs
s2R        0    8    1     6    6   S2 L-Arm Scintillator Right PMTs
s1         0    8    2     0    6   S1 L-Arm Paddles (Left.and.Right PMT)
s2         0    8    2     6    6   S2 L-Arm Paddles (Left.and.Right PMT)
gasC       0    8    3     0   11   L-arm Gas Cerenkov PMT
trigger-1  0    8    4     0    1   Trigger 1 measured on L-arm
trigger-2  0    8    4     1    1   Trigger 2 measured on L-arm
helicity+  0    8    4     4    1   helicity plus counting
helicity-  0    8    4     5    1   helicity minus counting
clock      0    8    4     7    1   1024 Hz clock on L-arm
unser      0    8    4     8    1   Unser Monitor on L-arm
bcm_d1     0    8    4    15    1   Beam Current, Downstream Cavity, gain = 1
bcm_u1     0    8    4    13    1   Beam Current, Upstream Cavity, gain = 1
bcm_d3     0    8    4     9    1   Beam Current, Downstream Cavity, gain = 3
bcm_d10    0    8    4    10    1   Beam Current, Downstream Cavity, gain = 10
edtpulser  0    8    4    21    1   Electronics deadtime pulser on Left Arm
edtatrig   0    8    4    22    1   EDT pulser anded with trigger on Left Arm
q10abusy   0    8    4    16    1   Q10 signal gated by Trigger Supervisor busy
clkabusy   0    8    4    17    1   Clock gated by Trigger Supervisor busy
strobe     0    8    4    19    1   Strobe for S-ray trigger
trigger-1  1    8    5     0    1   Trigger 1 measured on L-arm (pos helicity)
trigger-2  1    8    5     1    1   Trigger 2 measured on L-arm (pos helicity)
helicity+  1    8    5     4    1   helicity plus counting (pos helicity)
helicity-  1    8    5     5    1   helicity minus counting (pos helicity)
clock      1    8    5     7    1   1024 Hz clock on L-arm (pos helicity)
unser      1    8    5     8    1   Unser Monitor on L-arm (pos helicity)
bcm_d1     1    8    5    15    1   Beam Current, Downstream Cavity, gain = 1 (pos helicity)
bcm_u1     1    8    5    13    1   Beam Current, Upstream Cavity, gain = 1 (pos helicity)
bcm_d3     1    8    5     9    1   Beam Current, Downstream Cavity, gain = 3 (pos helicity)
bcm_d10    1    8    5    10    1   Beam Current, Downstream Cavity, gain = 10 (pos helicity)
trigger-1 -1    8    6     0    1   Trigger 1 measured on L-arm (neg helicity)
trigger-2 -1    8    6     1    1   Trigger 2 measured on L-arm (neg helicity)
helicity+ -1    8    6     4    1   helicity plus counting (neg helicity)
helicity- -1    8    6     5    1   helicity minus counting (neg helicity)
clock     -1    8    6     7    1   1024 Hz clock on L-arm (neg helicity)
unser     -1    8    6     8    1   Unser Monitor on L-arm (neg helicity)
bcm_d1    -1    8    6    15    1   Beam Current, Downstream Cavity, gain = 1 (neg helicity)
bcm_u1    -1    8    6    13    1   Beam Current, Upstream Cavity, gain = 1 (neg helicity)
bcm_d3    -1    8    6     9    1   Beam Current, Downstream Cavity, gain = 3 (neg helicity)
bcm_d10   -1    8    6    10    1   Beam Current, Downstream Cavity, gain = 10 (neg helicity)

# ------ Nov 6, 1999 until Sept 1, 2000  (reminder: channel index 0 = 1st) 
# desc  hel crate slot start nchan  long-description
DATE 6 11 1999 
s1L        0    7    0     0    6   S1 H-Arm Scintillator Left PMTs
s2L        0    7    0     6    6   S2 H-Arm Scintillator Left PMTs
s1R        0    7    1     0    6   S1 H-Arm Scintillator Right PMTs
s2R        0    7    1     6    6   S2 H-Arm Scintillator Right PMTs
s1         0    7    2     0    6   S1 H-Arm Paddles (Left.and.Right PMT)
s2         0    7    2     6    6   S2 H-Arm Paddles (Left.and.Right PMT)
trigger-1 -1    7    3     0    1   trigger 1 measured on H-arm (neg helicity)
trigger-2 -1    7    3     1    1   trigger 2 measured on H-arm (neg helicity)
trigger-3 -1    7    3     2    1   trigger 3 measured on H-arm (neg helicity)
trigger-4 -1    7    3     3    1   trigger 4 measured on H-arm (neg helicity)
trigger-5 -1    7    3     4    1   trigger 5 measured on H-arm (neg helicity)
clock     -1    7    3     7    1   clock, 1024 Hz (neg helicity)
bcm_u1    -1    7    3    13    1   Beam current, upstream cavity, gain = 1  (neg helicity)
bcm_d1    -1    7    3    15    1   Beam current, downstream cavity, gain = 1 (neg helicity)
bcm_u3    -1    7    3     6    1   Beam current, upstream cavity, gain = 3 (neg helicity)
bcm_d3    -1    7    3    10    1   Beam current, downstream cavity, gain = 3 (neg helicity)
bcm_u10   -1    7    3     8    1   Beam current, upstream cavity, gain = 10 (neg helicity)
bcm_d10   -1    7    3    11    1   Beam current, downstream cavity, gain = 10 (neg helicity)
unser     -1    7    3    14    1   Unser monitor
TS-accept -1    7    3    12    1   Trigger Supervisor accepted triggers (neg helicity)
trigger-1  0    7    4     0    1   trigger 1 measured on H-arm  
trigger-2  0    7    4     1    1   trigger 2 measured on H-arm  
trigger-3  0    7    4     2    1   trigger 3 measured on H-arm  
trigger-4  0    7    4     3    1   trigger 4 measured on H-arm  
trigger-5  0    7    4     4    1   trigger 5 measured on H-arm  
clock      0    7    4     7    1   clock, 1024 Hz  
bcm_u1     0    7    4    13    1   Beam current, upstream cavity, gain = 1   
bcm_d1     0    7    4    15    1   Beam current, downstream cavity, gain = 1  
bcm_u3     0    7    4     6    1   Beam current, upstream cavity, gain = 3  
bcm_d3     0    7    4    10    1   Beam current, downstream cavity, gain = 3  
bcm_u10    0    7    4     8    1   Beam current, upstream cavity, gain = 10  
bcm_d10    0    7    4    11    1   Beam current, downstream cavity, gain = 10
unser      0    7    4    14    1   Unser monitor
TS-accept  0    7    4    12    1   Trigger Supervisor accepted triggers  
trigger-1  1    7    5     0    1   trigger 1 measured on H-arm (pos helicity)
trigger-2  1    7    5     1    1   trigger 2 measured on H-arm (pos helicity)
trigger-3  1    7    5     2    1   trigger 3 measured on H-arm (pos helicity)
trigger-4  1    7    5     3    1   trigger 4 measured on H-arm (pos helicity)
trigger-5  1    7    5     4    1   trigger 5 measured on H-arm (pos helicity)
clock      1    7    5     7    1   clock, 1024 Hz (pos helicity)
bcm_u1     1    7    5    13    1   Beam current, upstream cavity, gain = 1  (pos helicity)
bcm_d1     1    7    5    15    1   Beam current, downstream cavity, gain = 1 (pos helicity)
bcm_u3     1    7    5     6    1   Beam current, upstream cavity, gain = 3 (pos helicity)
bcm_d3     1    7    5    10    1   Beam current, downstream cavity, gain = 3 (pos helicity)
bcm_u10    1    7    5     8    1   Beam current, upstream cavity, gain = 10 (pos helicity)
bcm_d10    1    7    5    11    1   Beam current, downstream cavity, gain = 10 (pos helicity)
unser      1    7    5    14    1   Unser monitor
TS-accept  1    7    5    12    1   Trigger Supervisor accepted triggers (pos helicity)
gasC       0    7    6     0   11   Gas Cerenkov on H-arm
s1L        0    8    0     0    6   S1 E-Arm Scintillator Left PMTs
s2L        0    8    0     6    6   S2 E-Arm Scintillator Left PMTs
s1R        0    8    1     0    6   S1 E-Arm Scintillator Right PMTs
s2R        0    8    1     6    6   S2 E-Arm Scintillator Right PMTs
s1         0    8    2     0    6   S1 E-Arm Paddles (Left.and.Right PMT)
s2         0    8    2     6    6   S2 E-Arm Paddles (Left.and.Right PMT)
gasC       0    8    3     0   11   E-arm Gas Cerenkov PMT
trigger-1  0    8    4     0    1   Trigger 1 measured on E-arm
trigger-2  0    8    4     1    1   Trigger 2 measured on E-arm
helicity+  0    8    4     4    1   helicity plus counting
helicity-  0    8    4     5    1   helicity minus counting
clock      0    8    4     7    1   1024 Hz clock on E-arm
unser      0    8    4     8    1   Unser Monitor on E-arm
bcm_d1     0    8    4    15    1   Beam Current, Downstream Cavity, gain = 1
bcm_u1     0    8    4    13    1   Beam Current, Upstream Cavity, gain = 1
bcm_d3     0    8    4     9    1   Beam Current, Downstream Cavity, gain = 3
bcm_d10    0    8    4    10    1   Beam Current, Downstream Cavity, gain = 10
trigger-1  1    8    5     0    1   Trigger 1 measured on E-arm (pos helicity)
trigger-2  1    8    5     1    1   Trigger 2 measured on E-arm (pos helicity)
helicity+  1    8    5     4    1   helicity plus counting (pos helicity)
helicity-  1    8    5     5    1   helicity minus counting (pos helicity)
clock      1    8    5     7    1   1024 Hz clock on E-arm (pos helicity)
unser      1    8    5     8    1   Unser Monitor on E-arm (pos helicity)
bcm_d1     1    8    5    15    1   Beam Current, Downstream Cavity, gain = 1 (pos helicity)
bcm_u1     1    8    5    13    1   Beam Current, Upstream Cavity, gain = 1 (pos helicity)
bcm_d3     1    8    5     9    1   Beam Current, Downstream Cavity, gain = 3 (pos helicity)
bcm_d10    1    8    5    10    1   Beam Current, Downstream Cavity, gain = 10 (pos helicity)
trigger-1 -1    8    6     0    1   Trigger 1 measured on E-arm (neg helicity)
trigger-2 -1    8    6     1    1   Trigger 2 measured on E-arm (neg helicity)
helicity+ -1    8    6     4    1   helicity plus counting (neg helicity)
helicity- -1    8    6     5    1   helicity minus counting (neg helicity)
clock     -1    8    6     7    1   1024 Hz clock on E-arm (neg helicity)
unser     -1    8    6     8    1   Unser Monitor on E-arm (neg helicity)
bcm_d1    -1    8    6    15    1   Beam Current, Downstream Cavity, gain = 1 (neg helicity)
bcm_u1    -1    8    6    13    1   Beam Current, Upstream Cavity, gain = 1 (neg helicity)
bcm_d3    -1    8    6     9    1   Beam Current, Downstream Cavity, gain = 3 (neg helicity)
bcm_d10   -1    8    6    10    1   Beam Current, Downstream Cavity, gain = 10 (neg helicity)
#
# ---------- Aug 20, 1998 until Nov 6, 1999  (reminder: channel index 0 = 1st)
# desc  hel crate slot start nchan  long-description
DATE 20 8 1998      
s1L        0    7    0     0    6   S1 H-Arm Scintillator Left PMTs
s2L        0    7    0     6    6   S2 H-Arm Scintillator Left PMTs
s1R        0    7    1     0    6   S1 H-Arm Scintillator Right PMTs
s2R        0    7    1     6    6   S2 H-Arm Scintillator Right PMTs
s1         0    7    2     0    6   S1 H-Arm Paddles (Left.and.Right PMT)
s2         0    7    2     6    6   S2 H-Arm Paddles (Left.and.Right PMT)
trigger-1 -1    7    3     0    1   trigger 1 measured on H-arm (neg helicity)
trigger-2 -1    7    3     1    1   trigger 2 measured on H-arm (neg helicity)
trigger-3 -1    7    3     2    1   trigger 3 measured on H-arm (neg helicity)
trigger-4 -1    7    3     3    1   trigger 4 measured on H-arm (neg helicity)
trigger-5 -1    7    3     4    1   trigger 5 measured on H-arm (neg helicity)
clock     -1    7    3     7    1   clock, 1024 Hz (neg helicity)
bcm_u1    -1    7    3    13    1   Beam current, upstream cavity, gain = 1  (neg helicity)
bcm_d1    -1    7    3    15    1   Beam current, downstream cavity, gain = 1 (neg helicity)
bcm_u3    -1    7    3     6    1   Beam current, upstream cavity, gain = 3 (neg helicity)
bcm_d3    -1    7    3    10    1   Beam current, downstream cavity, gain = 3 (neg helicity)
bcm_u10   -1    7    3     8    1   Beam current, upstream cavity, gain = 10 (neg helicity)
bcm_d10   -1    7    3    11    1   Beam current, downstream cavity, gain = 10 (neg helicity)
unser     -1    7    3    14    1   Unser monitor
TS-accept -1    7    3    12    1   Trigger Supervisor accepted triggers (neg helicity)
trigger-1  0    7    4     0    1   trigger 1 measured on H-arm  
trigger-2  0    7    4     1    1   trigger 2 measured on H-arm  
trigger-3  0    7    4     2    1   trigger 3 measured on H-arm  
trigger-4  0    7    4     3    1   trigger 4 measured on H-arm  
trigger-5  0    7    4     4    1   trigger 5 measured on H-arm  
clock      0    7    4     7    1   clock, 1024 Hz  
bcm_u1     0    7    4    13    1   Beam current, upstream cavity, gain = 1   
bcm_d1     0    7    4    15    1   Beam current, downstream cavity, gain = 1  
bcm_u3     0    7    4     6    1   Beam current, upstream cavity, gain = 3  
bcm_d3     0    7    4    10    1   Beam current, downstream cavity, gain = 3  
bcm_u10    0    7    4     8    1   Beam current, upstream cavity, gain = 10  
bcm_d10    0    7    4    11    1   Beam current, downstream cavity, gain = 10
unser      0    7    4    14    1   Unser monitor
TS-accept  0    7    4    12    1   Trigger Supervisor accepted triggers  
trigger-1  1    7    5     0    1   trigger 1 measured on H-arm (pos helicity)
trigger-2  1    7    5     1    1   trigger 2 measured on H-arm (pos helicity)
trigger-3  1    7    5     2    1   trigger 3 measured on H-arm (pos helicity)
trigger-4  1    7    5     3    1   trigger 4 measured on H-arm (pos helicity)
trigger-5  1    7    5     4    1   trigger 5 measured on H-arm (pos helicity)
clock      1    7    5     7    1   clock, 1024 Hz (pos helicity)
bcm_u1     1    7    5    13    1   Beam current, upstream cavity, gain = 1  (pos helicity)
bcm_d1     1    7    5    15    1   Beam current, downstream cavity, gain = 1 (pos helicity)
bcm_u3     1    7    5     6    1   Beam current, upstream cavity, gain = 3 (pos helicity)
bcm_d3     1    7    5    10    1   Beam current, downstream cavity, gain = 3 (pos helicity)
bcm_u10    1    7    5     8    1   Beam current, upstream cavity, gain = 10 (pos helicity)
bcm_d10    1    7    5    11    1   Beam current, downstream cavity, gain = 10 (pos helicity)
unser      1    7    5    14    1   Unser monitor
TS-accept  1    7    5    12    1   Trigger Supervisor accepted triggers (pos helicity)
gasC       0    7    6     0   11   Gas Cerenkov on H-arm
s1L        0    8    0     0    6   S1 E-Arm Scintillator Left PMTs
s2L        0    8    0     6    6   S2 E-Arm Scintillator Left PMTs
s1R        0    8    1     0    6   S1 E-Arm Scintillator Right PMTs
s2R        0    8    1     6    6   S2 E-Arm Scintillator Right PMTs
s1         0    8    2     0    6   S1 E-Arm Paddles (Left.and.Right PMT)
s2         0    8    2     6    6   S2 E-Arm Paddles (Left.and.Right PMT)
gasC       0    8    3     0   11   E-arm Gas Cerenkov PMT
trigger-1  0    8    4     0    1   Trigger 1 measured on E-arm
trigger-2  0    8    4     1    1   Trigger 2 measured on E-arm
clock      0    8    4     7    1   1024 Hz clock on E-arm
unser      0    8    4     8    1   Unser Monitor on E-arm
bcm_d1     0    8    4    15    1   Beam Current, Downstream Cavity, gain = 1
bcm_u1     0    8    4    13    1   Beam Current, Upstream Cavity, gain = 1
bcm_d3     0    8    4     9    1   Beam Current, Downstream Cavity, gain = 3
bcm_d10    0    8    4    10    1   Beam Current, Downstream Cavity, gain = 10
a1L        0    8    5     0   13   Aerogel Left PMTs
a1R        0    8    6     0   13   Aerogel Right PMTs

