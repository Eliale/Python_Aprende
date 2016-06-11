

for x in range(1,11):
	print ("tabla del",x)
	for y in range(1,11):			
			print (x*y)



#Sumatoria de gauss ??? Como en python
n = 10 #Los cien primeros numeros no mas
res = 0 # resultado
for i in range(1,n+1):
	res+=i

print("La sumatora de ",n , "es ",res)	

#Numeros no primos
for p in range(1,n+1):
	for z in range(2,n+1):
		if (p%z==0 and p!=z):
			print(p," no primo")

	
# definir funciones en esta cosa


			




