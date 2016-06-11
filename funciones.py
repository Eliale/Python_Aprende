#Determina si un numero es primo o no
def is_primo(num):
	if num<=1:
		return False
	es_primo = True
	for x in range(2,num):
		if(num%x==0):
			es_primo=False
	return es_primo
## Numeros primos hasta un limite
def num_primo(num):
	for x in range(num+1):
		if (is_primo(x)):
			print(x," es un numero primo")



num_primo(340)

#SUMA DE GAUSS
def suma_gauss(n):
	return (n*(n+1))/2
#fibonnaci recursivo mala idea
def fib(num):
	if num==1 or num==0:
		return num
	if num>1:
		return fib(num -1) + fib(num -2)

#fibonacci iterativo con limite siendo n el mayor numero calculado
def fib2(n):
	a,b = 0,1
	while b <= n:
		print(b)
		a ,b = b , a+b

#Fibonacci N-esimo
## Esta madre vuela
def fib3(n):
	a,b = 0,1
	c = 1;
	while c <= n:
		print(b)
		a ,b = b , a+b
		c+=1

fib3(400)



