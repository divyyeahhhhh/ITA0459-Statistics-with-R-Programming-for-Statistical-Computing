array_elements=c(1,2,3,4,5,6,7,8,9,10,11,12)
array_dimension=c(2,3,2)
array_names=list(c("R1","R2"),
                 c("C1","C2","C3"),
                 c("D1","D2"))
my_array=array(array_elements,dim = array_dimension,dimnames = array_names)
print(my_array)