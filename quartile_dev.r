print("Enter data: ")
data = scan()

find_length = function(data)
{
  count = 0
  for(i in data)
  {
    count = count+1
  }
  return(count)
}

sel_sort = function(arr){
  n = find_length(arr)
  for (i in 1 : (n - 1))
  {
    min_index = i
    for (j in (i + 1) : (n))
    {
      if (arr[j] < arr[min_index]) {
        min_index = j
      }
    }
    temp = arr[i]
    arr[i] = arr[min_index]
    arr[min_index] = temp
  }
  return(arr)
}

sorted_data = mySort(data)
print(sorted_data)

n = find_length(sorted_data)
print(n)

for( i in 1:n)
{
  if(n %% 2 == 0)
  {
    Q3 = (3*n)/4
    Q1 = n/4
  }
  else
  {
    Q3 = 3(n+1) / 4
    Q1 = (n+1)/4
  }
}
print(paste("The third Quartile is:",Q3))
print(paste("The first Quartile is:",Q1))
QD = (Q3 - Q1)/2
print(paste("=> The resultant quartile deviaton is: ",QD))