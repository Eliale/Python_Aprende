f = open("db_ventasok.sql", "r")
f3 = open("copia.txt", "w")

f3.write("Esto es una vil y vulgar copia" + "\n")
while True:
 	linea = f.readline()
	if not linea: break 
	f3.write(linea+"\n")
	print linea





print "____________________________________________________________________________________________"




# Creacion de un archivo, llenados con pares
l = range(101)

f = open("fichero.txt", "w")
def pares(n):
	return n%2==0


def escribe_txt():
	l2 = filter(pares, l)
	for x in l2:		
		f.write("\t"+str(x)+"\n")

escribe_txt()




