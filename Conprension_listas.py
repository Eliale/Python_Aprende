#AHora compresion de listas

l = range(1,11)
#PARECIDO A MAP PARA CUBOS

l2 = [ x**3	for x in l]
print (l2)

#PARECIDO A FILTER
l3 = [x for x in l if x%2.0==0]
print (l3)

