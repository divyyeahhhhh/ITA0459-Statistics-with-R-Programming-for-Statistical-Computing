getinput=as.numeric(readline(prompt = "ENTER ANY NUMBER"))
print(paste("the factors of",getinput,"are="))
for(n in 1:getinput){
  if((getinput %% n)==0){
    print(n)
  }
}