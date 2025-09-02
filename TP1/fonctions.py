def puissance(a,b):
	if a==0 or b==0:
		return ('erreur, car un nombre est egale a 0')
	if not type(a) is int or not type(b) is int:
		return ("Ce n'est pas un nombre entier")
	else:
		return(a**b)
