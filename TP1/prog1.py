import fonctions as f

print("Hello, World!")

'''
while True:
	x=int(input("donner un nombre:"))
	print(x**2)
'''

while True:
	a= int(input("donner un premier nombre:"))
	b= int(input("donner un second nombre:"))
	res = f.puissance(a,b)
	print(res)