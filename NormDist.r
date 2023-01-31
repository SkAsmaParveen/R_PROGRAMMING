#CI
x = c(1,3,5,7,9)
y = c(3,5,7,9,11)
xi = (x+y)/2
f = c(1,4,6,4,1)
print(sum(f))
fx = f*xi
print(sum(fx))
fxx = f*xi*xi
print(sum(fxx))
#find mew

m = sum(fx)/sum(f)
print(m)

#find stdev sigma
#sig(fxx ^ 2) / sig(f) - mean ^ 2

sd = (sum(fxx) / sum(f)) - (m*m)
sd = sqrt(sd)
print(sd)

#find z1 and z2 using built in function
#z1 = (x - m)/stddev

Z1 = pnorm(y,m,sd)
Z2 = pnorm(x,m,sd)
pr = Z1-Z2
Z1 = round(Z1,digits = 5)
Z2 = round(Z2,digits = 5)
pr = round(pr,digits = 5)

# find expectation
fee = (pr*sum(f))
fe = round(fee,digits = 0)

#form a table
data = data.frame(x,y,xi,f,fx,fxx,Z1,Z2,pr,fee,fe)
print(data)

#append the last column to the end of the table

sums = list(NA,NA,NA,sum(f),sum(fx),sum(fxx),NA,NA,NA,NA,sum(fe))
data = rbind(data,sums)
print(data,row.names = FALSE)
result = chisq.test(f,p = pr,rescale.p = TRUE)
print(result)



