print("Enter data to find range: ")
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

n = find_length(data)
min_ele = data[1]
max_ele = data[1]
for(i in 2:n)
{
  if(min_ele > data[i])
  {
    min_ele = data[i]
  }
  if(max_ele < data[i])
  {
    max_ele = data[i]
  }
}
print(paste("The min ele is: ",min_ele))
print(paste("The max ele is: ",max_ele))
Range = max_ele - min_ele
rang = max(data) - min(data)
print(paste("The Range of the given vector is: ",Range))
print(paste("The RAnge of the given vector using built in function is:",rang))
