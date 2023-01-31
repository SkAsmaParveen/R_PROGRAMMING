# Goodness of fit contingency table
m<-as.table(rbind(c(190,243,197),c(82,44,44),c(23,78,34),c(5,12,8)))
dimnames(m)=list(Empcategory=c("Labour","Clerks","Technicians","Executives"), BonusSchemes=c("Type1","Type2","Type3"))

# Unlike rownames() or colnames() the dimnames() command operates on both rows
# and columns at once. If you use it to set the names you need
# to specify the names for the rows and columns in that order) in a list.

print(m)
csum<-colSums (m)
rsum<-rowSums (m)
mytable<-(rbind(m,csum))
print(mytable)
mytable<-(cbind(m,rsum))
print(mytable)
test<-chisq.test(m)
print(test)
print(test$expected,3)

