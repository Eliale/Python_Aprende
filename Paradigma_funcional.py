#Eleva un numero al cuadrado
def cuadrado(n):
	return n**2

# SI un entero es positivo le vuelve negativo
def negativo(n):
	if n>0:
		return -n
	else:
		return n
# Si es par
def es_par(n):
	return n%2==0
#Si es primo
def es_primo(num):
	if num<=1:
		return False
	es_primo = True
	for x in range(2,num):
		if(num%x==0):
			es_primo=False
	return es_primo



# Usar map en la lista
numeros = range(0,101)

l=map(cuadrado, numeros)

print l

l2=map(negativo, numeros)

print l2

l3=map(es_par, numeros)

print l3

#Uso de filtros
# un filter es como un if pero mas pro xD

l4=filter(es_par, numeros)
print l4

l5=filter(es_primo, numeros)
print "Primo",l5

#Uso de Reduce

