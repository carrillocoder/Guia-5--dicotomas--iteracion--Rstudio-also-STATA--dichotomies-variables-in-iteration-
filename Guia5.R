setwd("D:/Guia 5")
library(haven)
wag=read_dta("wage1.dta")
View(wag)
attach(wag)
#variables no lineales
exper2=exper*exper
m1=lm(wage~educ+exper+exper2)
summary(m1)
mean(exper)
#interpretacion 
#B1: si educ aumenta 1 año ===> wage aumenta $0.59 ceteris paribus
#B2 y B3: beta2 - 2*beta3*experprometdio 
0.2692 - 2 * 0.004612 * 17.01711 #0.1122342
#si exper aumenta 1 año ==> aumenta $0.11 en promedio ceteris paribus 
#variables en interaccion 
expten=exper*tenure
m2=lm(wage~educ+exper+exper2+expten)
summary(m2)
mean(tenure) #5.104563
#encontrar el efecto de exper sobre el salario
0.2482175 - 2*0.0052608*17.01711 + 0.0040293*5.104563 #0.08973809
#si exper aumenta 1 año ==> wage aumenta en $0.08973809 para el promedio 
#de los años de experiencia y los años de experiencia actual
