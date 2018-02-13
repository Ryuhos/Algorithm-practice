# 1번 문제 : 반복문(for, while)을 사용하지 않고 i 번째 피보나치 수를 출력하는 함수를 구현하세요.
fibonacci_number <- function(i)
{ if(i<=2){
  return(1)
}
  else{
    return(fibonacci_number(i-1)+fibonacci_number(i-2))
  }
}

fibonacci_number(30) ###재귀함수를 사용했기 때문에 연산을 하는데 있어서 불필요한 과정이 너무 많다. (5초)


# 2번 문제 : 첫번째 피보나치 수부터 n번째 피보나치 수까지의 합을 result 변수에 담아주세요! 
#           단, 0 < n <= 10000, 제한 시간 1초
system.time({
  rm(list = ls())
  fibonacci_number <- function(i)
  { if(i<=2){
    return(1)
  }
    else{
      return(fibonacci_number(i-1)+fibonacci_number(i-2))
    }
  }
  sum_of_fibonacci <- function(n)
  {   fibo_v<-c()           #fibonacci 벡터를 만들어주고, 벡터에 값을 지정하는 함수를 구현한다.
  for (k in 1:n){
    if(k==1|k==2){
      fibo_v[k]<- 1
    }
    else{
      fibo_v[k]<-(fibo_v[k-1]+fibo_v[k-2])%%1000000009
    }
  }
  result<-sum(fibo_v)
  return(result)
  }
  sum_of_fibonacci(sample(1000:10000, 1))
})
sum_of_fibonacci(30)
# 3번 문제 : my_function은 정수 n(1<=n<=100000)을 입력받아 세 가지 변환 여러번을 통해 최종적으로 1을 만드는데, 그때 변환의 최소 수를 출력하는 함수다.
#            변환의 방법은 다음과 같다.
#               1. n이 3의 배수 인 경우 -> n / 3으로 변환
#               2. n이 2의 배수 인 경우 -> n / 2으로 변환
#               3. n - 1로 변환
#            만약 n이 6이라면, 3의 배수이기 때문에, 1번 변환에 의해 2가 될 ㅛ수도 있고, 2번 변환에 의해 3이 될 수도 있고, 3번 변환에 의해 5가 될 수도 있다.
#            그리고 6을 1번 변환을 통해 2가되면 2, 3번 변환 중 둘 중 하나를 거치면 1이 된다.
#            즉, my_function(6) = 2가 된다.
#            my_function을 구현하세요. 제한 시간 1초
system.time({
  rm(list = ls())
  my_function <- function(n)
  {count<--1
  i<-1
  while(i<=n){
    if(n%%3==0){
      n<-n/3
    }
    else if(n%%2==0){
      n<-n/2
    }
    else {
      n<-n-1
    }
    count<-count+1
  }
  return(count)
  }
  my_function(sample(10000:100000, 1))
})
