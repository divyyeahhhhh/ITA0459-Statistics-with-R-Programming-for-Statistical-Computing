my_vector=c(1,2,3,4,5,6)
my_matrices=matrix(1:6,nrow=3,ncol=2)
my_function=function(x){
  return(x*2)
}
list_of_all=list(vector_elements=my_vector,
                 matrix_elements=my_matrices,
                 function_elements= my_function)
print(list_of_all)