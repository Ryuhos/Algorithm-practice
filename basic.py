########## 1. n개 정수 ###########

x = [-2,-5,1,2,7,9,-1,5,7,9,1,3,-4,-5,1]

def my_sort(x):
    negative = []
    positive = []
    for i in range(0,len(x)):
        if x[i] < 0 :
            negative.append(x[i])
        else :
            positive.append(x[i])
    result=negative+positive
    return result

my_sort(x)

########## 2. 각 자리수 더하기 ###########

x = 2**15

def digit_sum(num):
    x = 2**num
    result = 0
    for i in str(x):
        result += int(i)
    return  result

digit_sum(1000)

########## 3. 증가수 찾기 ###########

def ox_increase(x):
    k = 0
    for i in str(x):
        if int(i) >= k :
            k = int(i)
        else :
            return 0
    return 1

def increase_num(start,end):
    num_list = []
    for i in range(start,end+1):
        num_list.append(i)
    result = []
    for j in num_list:
        a = j*int(str(j)[::-1])
        b = ox_increase(a)
        result.append(b)
    return sum(result)

increase_num(101,999)














