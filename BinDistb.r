x = c(0,1,2,3,4,5,6,7)
f = c(7,6,19,35,30,23,7,1)
fx = f*x
print(sum(f))
print(fx)
print(sum(fx))
n = length(x)-1
#cal mean
Mean = sum(fx)/sum(f)
print(Mean)
#cal p and q values
p = Mean/n
print(round(p,4))
# q = 1-p
q = (1-p)
print(round(q,4))
#cal Px = Ncx.Px.q^ (n-x) in BD
#use built in function
Px = dbinom(0:7,size = n,prob = p)
s = round(Px,digits = 5)
#cal N.Px
#here N = sum(f)
NPx = sum(f) * Px
w = round(NPx,digits = 2)
#write as table form
myData = data.frame(x,f,fx,s,w)
print(myData)
sums = list(NA,sum(f),sum(fx),NA,NA,NA)
#append this list to data frame
myData = rbind(myData,sums)
print(myData,row.names = FALSE)
#cal chisqr calvalue
result = chisq.test(f,p = s,rescale.p = TRUE)
print(result)
tablevalue = qchisq(0.95,df = n)
print(tablevalue)
if(result[1]>tablevalue)
{
  print("Ho is accepted ! Data doesn't fit BD ")
}
if(result[1]<tablevalue)
{
  print("Ho is rejected!")
}



