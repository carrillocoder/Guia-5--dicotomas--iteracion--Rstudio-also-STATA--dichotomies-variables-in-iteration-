*Guia 6 
clear all 
cd "D:\ACTIVIDAD\Guia 5"
use wage1
*Dicotomas 
tabulate female 
tab female 
*modelos lneales 
reg wage female
reg wage educ female 
*modelos log lin 
reg lwage female
