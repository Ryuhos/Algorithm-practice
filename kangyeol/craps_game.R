#Craps 게임
Craps <- function(){
  A <- c(1,2,3,4,5,6)
  res <- sum(sample(A,2,replac=T))
  if(res %in% c(7,11)){
    return(1)
  } else if(res %in% c(2,3,12)){
    return(0)
  } else{
    while(TRUE){
      re_res <- sum(sample(A,2,replace=T))
      if(re_res==7){
        return(0)
      } else if(re_res == res){
        return(1)
      } 
    }
  }
}

#adda1
Monte_per_Craps <- function(N){
  result <- 0
  for (i in 1:N){
    result <- result + Craps()
  }
  return(result/N)
}
set.seed(123)
Monte_per_Craps(1e5) #0.4922

#b
fight <- function(a,b){
  while((a>0)&(b>0)){
    if (Craps()){
      a <- a+1
      b <- b-1
    }else {
      a <- a-1
      b <- b+1
    }
  }
  if(b==0){
    return(1)
  }else{
    return(0)
  }
}
Monte_per_Victory <- function(N,a,b){
  result <- 0
  for (i in 1:N){
    result <- result + fight(a,b)
  }
  return(result/N)
}
set.seed(123)
Monte_per_Victory(1e3,12,9) #0.487
Monte_per_Victory(1e3,20,9) #0.593
