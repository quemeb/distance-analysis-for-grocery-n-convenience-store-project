### High Income -- GS-1 vs CS-1

boxplot(Bel_Air_gs1, Bel_Air_ls1,
        Rolling_Hills_gs1, Rolling_Hills_ls1,
        La_Habra_Height_gs1, La_Habra_Height_ls1,
        Beverlywood_gs1, Beverlywood_ls1,
        Cerritos_gs1, Cerritos_ls1,
        Santa_Clarita_gs1, Santa_Clarita_ls1,
        main = 'Grocery and Convenience Store 1 in High Income', 
        xlab = 'City (Rank)', ylab = 'Distance (m)', xaxt = "n", 
        col=c("dodgerblue" , "purple"), boxwex=0.4 )

my_names = c(BA, RH, LHH, B, C, SC);
axis(1, at = seq(1.5 , 12 , 2), labels = my_names , tick=F , cex=0.3)
for(i in seq(0.5 , 20 , 2)){ abline(v=i,lty=1, col="grey")}
legend("topright", legend = c("GS-1", "CS-1"), 
       col=c("dodgerblue" , "purple"),
       pch = 15, bty = "n", pt.cex = 3, cex = 1.2,  horiz = FALSE)


### Low-Income -- GS-1 vs CS-1

boxplot(Canoga_Park_gs1, Canoga_Park_ls1,
        Long_Beach_gs1, Long_Beach_ls1,
        Valley_Glen_gs1, Valley_Glen_ls1,
        Florence_gs1, Florence_ls1,
        Vermont_Knolls_gs1,Vermont_Knolls_ls1,
        University_Park_gs1,University_Park_ls1,
        main = 'Grocery and Convenience Store 1 in Low Income', 
        xlab = 'City (Rank)', ylab = 'Distance (m)',boxwex=0.4, xaxt = "n", 
        col=c("dodgerblue" , "purple"))

my_names = c(CP, LB, VG, FL, VK, UP);
axis(1, at = seq(1.5 , 12 , 2), labels = my_names , tick=F , cex=0.3)
for(i in seq(0.5 , 20 , 2)){ abline(v=i,lty=1, col="grey")}
legend("topright", legend = c("GS-1", "CS-1"), 
       col=c("dodgerblue" , "purple"),
       pch = 15, bty = "n", pt.cex = 3, cex = 1.2)


boxplot(HI_gs1, HI_ls1, LI_gs1, LI_ls1, HI_gs2, HI_ls2, LI_gs2, LI_ls2,
        main = 'Grocery and Convenience Stores',
        ylab = 'Distance (m)',boxwex=0.4, xaxt = "n", 
        col=c("dodgerblue" , "purple"))

my_names = c('High Income', 'Low Income', 'High Income', 'Low Income');   
axis(1, at = seq(1.5 , 8 , 2), labels = my_names , tick=F , cex=0.3)

axis(1, at = seq(2.5 , 8 , 4), 
     labels = c("Grocery and Convenience Store 1", "Grocery and Convenience Store 2"), 
     tick=F , cex=0.9, line = 2)

for(i in seq(0.5 , 20 , 2)){ abline(v=i,lty=1, col="grey")}
legend("topright", legend = c("Grocery Store", "Convenient Store"), col=c("dodgerblue" , "purple"),
       pch = 15, bty = "n", pt.cex = 3, cex = 1.2)

# color less and individual major boxplot cities


#  boxplot(HI_gs1, HI_gs2, HI_ls1, HI_ls2, main = 'High Income Distances', 
#       ylab = 'Distance (m)',
#        names = c('Grocery Store 1', 'Grocery Store 2', 'Convenience Store 1', 'Convenience Store 2'))

# boxplot(LI_gs1, LI_gs2, LI_ls1, LI_ls2, main = 'Low Income Distances', 
#        ylab = 'Distance (m)',
#        names=c('Grocery Store 1', 'Grocery Store 2', 'Convenience Store 1', 'Convenience Store 2'))

