fun_game <-  function(){
  strength = c()
  energy = c()
  results = c()
  T = as.integer(readline())
  #print(T)
  if((is.na(T) ) | (T>10 | T<1)){
    fun_game()
  } 
  
  for(j in 1:T){
    N = as.integer(readline())
    #print(N)
    if((is.na(N)) | (N>1000 | N<1) ){
      N = as.integer(readline())
    }
    strength = as.integer(unlist(strsplit(readline()," ")))
    for(i in 1:N) {
      if(strength[i]<1) strength[i] = as.integer(readline())
    } 
    energy = as.integer(unlist(strsplit(readline()," ")))
    for(i in 1:N) {
      if(energy[i]>100000) energy[i]= as.integer(readline())
    } 
    #print(strength)
    #print(energy)
    
    #strength = sort(strength, decreasing = TRUE)
    #energy = sort(energy)
    for(k in strength){
      #print(k)
      if(length(energy[energy>k])) {
        #print("yes")
        if(k == strength[N]) results[j] <- "WIN"
        next
      } else {
        results[j] <- "LOSE"
        break
      }
      
    }
  }
  return(cat(noquote(results), sep ="\n"))
}


fun_game()

