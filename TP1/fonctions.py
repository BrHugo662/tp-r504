def puissance(a,b):
	if not type(a) is int or not type(b) is int:
		return ("Ce n'est pas un nombre entier")
	if a==0:
		if b<0:
			return('0 avec une puissance négative imposible')
	else:
		return(a**b)
