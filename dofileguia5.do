*guia 5 
cd "D:\ACTIVIDAD\Guia 5"
*variables no lineales e interaccion 
clear all 
use wage1
*variables no lineales 
gen exper2=exper*exper // generate
reg wage educ exper exper2 
*variables en interaccion 
gen expten=exper*tenure
reg wage educ exper exper2 expten 
