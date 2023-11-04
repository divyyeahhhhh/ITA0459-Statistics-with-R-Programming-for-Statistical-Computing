vector1=c(1,2,3,4,5,6,7,8,9)
vector2=c(10,11,12,13,14,15,16,17,18)
matrix1=matrix(vector1,nrow=3,ncol=3)
matrix2=matrix(vector2,nrow=3,ncol=3)
matrix_array=array(c(matrix1,matrix2),dim=c(3,3,2),dimnames= NULL)
print(matrix_array)
print(matrix_array[2, , 2]) #first element 2 indicate "ROWS", second element " " indicates columns,third elements "2" indicated dimension of array
print(matrix_array[3,3,1])