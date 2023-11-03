print("LIST OF RANDOM NUMBERS IN ND")
random_number_nd=floor(rnorm(10,mean=20,sd=2)) #using 'floor' we can remove decimal
print(random_number_nd)
occurance=table(random_number_nd)
print("OCCURANCES OF EACH VALUES")
print(occurance)