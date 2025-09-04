def puissance(a,b):
'''
	if a<0:
		return ('erreur')
'''
	if not type(a) is int or not type(b) is int:
		return ("Ce n'est pas un nombre entier")
	else:
		return(a**b)
