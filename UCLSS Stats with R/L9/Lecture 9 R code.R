#PCA
#preparing files
lifehistory2 <- subset(lifehistory, select=-c(group,species))
lifehistory2 <- lifehistory2[complete.cases(lifehistory2),]

#matrices
covmat <- cov(lifehistory2)
covmat
cormat <- cor(lifehistory2)
cormat

#running PCA
pca1 <- prcomp(lifehistory2, scale.=T, retx=T)
pca1

#eigenvectors
pca1$rotation
#eigenvalues
pca1$sdev
pca1$sdev^2 
sum(pca1$sdev^2)


#pch table r, each number represents one kind of symbols, ?pch 
screeplot(pca1, main="PCs", pch=16)
screeplot(pca1, main="PCs", type="line", pch=16)
title(xlab="PC number")
screeplot(pca1, main="PCs", pch=16, col=c("orange", "lightblue"))


#variance explained
summary(pca1)

#loadings plotting
biplot(pca1, choices=c(1,2), col=c("blue","black"), cex.axis=0.6)

#preparing file for PC plotting
pca1$x -> matrixpc
matrixpc
pcscores <- data.frame(matrixpc)
pcscores
lifehistorypc <- data.frame(lifehistory, pcscores)

summary(lifehistorypc$group)
#ape,new,old,strep,tar
plot(PC2~PC1, pch=16, col=c("green","blue", "red", "grey", "orange")[group],
     data=lifehistorypc)
#legend locator: 
#run code below
#then clic on the plot location you want the lenged to be
#then click finish (top right of plot panel)
legend(locator(n=2),legend=c("ape","new","old","strep","tar"), 
       pch=16, cex=0.6, col=c("green","blue", "red", "grey", "orange"))
#to identify a point in plot:
#run line below, click on the point you want to identify
#then click on finish
identify(lifehistorypc$PC2~lifehistorypc$PC1)

plot(PC3~PC1, pch=16, col=c("green","blue", "red", "grey", "orange")[group],
     data=lifehistorypc)
plot(PC3~PC2, pch=16, col=c("green","blue", "red", "grey", "orange")[group],
     data=lifehistorypc)
