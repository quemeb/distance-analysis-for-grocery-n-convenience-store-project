attach(High)                    #attaches data for usage

  # assigns values to variables for easier interpretation 
  
Rolling_Hills_gs1 = hgs1[!is.na(hgs1)]
Rolling_Hills_gs2 = hgs2[!is.na(hgs2)]
Rolling_Hills_ls1 = hls1[!is.na(hls1)]      
Rolling_Hills_ls2 = hls2[!is.na(hls2)]

Cerritos_gs1 = hgs1__1[!is.na(hgs1__1)]
Cerritos_gs2 = hgs2__1[!is.na(hgs2__1)]
Cerritos_ls1 = hls1__1[!is.na(hls1__1)]
Cerritos_ls2 = hls2__1[!is.na(hls2__1)]

La_Habra_Height_gs1 = hgs1__2[!is.na(hgs1__2)]
La_Habra_Height_gs2 = hgs2__2[!is.na(hgs2__2)]
La_Habra_Height_ls1 = hls1__2[!is.na(hls1__2)]
La_Habra_Height_ls2 = hls2__2[!is.na(hls2__2)]

Bel_Air_gs1 = hgs1__3[!is.na(hgs1__3)]
Bel_Air_gs2 = hgs2__3[!is.na(hgs2__3)]
Bel_Air_ls1 = hls1__3[!is.na(hls1__3)]
Bel_Air_ls2 = hls2__3[!is.na(hls2__3)]

Beverlywood_gs1 = hgs1__4[!is.na(hgs1__4)]
Beverlywood_gs2 = hgs2__4[!is.na(hgs2__4)]
Beverlywood_ls1 = hls1__4[!is.na(hls1__4)]
Beverlywood_ls2 = hls2__4[!is.na(hls2__4)]

Santa_Clarita_gs1 = hgs1__5[!is.na(hgs1__5)]
Santa_Clarita_gs2 = hgs2__5[!is.na(hgs2__5)]
Santa_Clarita_ls1 = hls1__5[!is.na(hls1__5)]
Santa_Clarita_ls2 = hls2__5[!is.na(hls2__5)]

attach(Low)                   #attaches data for usage

  # assigns values to variables for easier interpretation 

Canoga_Park_gs1 = gs1[!is.na(gs1)]
Canoga_Park_gs2 = gs2[!is.na(gs2)]
Canoga_Park_ls1 = ls1[!is.na(ls1)]
Canoga_Park_ls2 = ls2[!is.na(ls2)]

Valley_Glen_gs1 = gs1__1[!is.na(gs1__1)]
Valley_Glen_gs2 = gs2__1[!is.na(gs2__1)]
Valley_Glen_ls1 = ls1__1[!is.na(ls1__1)]
Valley_Glen_ls2 = ls2__1[!is.na(ls2__1)]

Florence_gs1 = gs1__2[!is.na(gs1__2)]
Florence_gs2 = gs2__2[!is.na(gs2__2)]
Florence_ls1 = ls1__2[!is.na(ls1__2)]
Florence_ls2 = ls2__2[!is.na(ls2__2)]

University_Park_gs1 = gs1__3[!is.na(gs1__3)]
University_Park_gs2 = gs2__3[!is.na(gs2__3)]
University_Park_ls1 = ls1__3[!is.na(ls1__3)]
University_Park_ls2 = ls2__3[!is.na(ls2__3)]

Vermont_Knolls_gs1 = gs1__4[!is.na(gs1__4)]
Vermont_Knolls_gs2 = gs2__4[!is.na(gs2__4)]
Vermont_Knolls_ls1 = ls1__4[!is.na(ls1__4)]
Vermont_Knolls_ls2 = ls2__4[!is.na(ls2__4)]

Long_Beach_gs1 = gs1__5[!is.na(gs1__5)]
Long_Beach_gs2 = gs2__5[!is.na(gs2__5)]
Long_Beach_ls1 = ls1__5[!is.na(ls1__5)]
Long_Beach_ls2 = ls2__5[!is.na(ls2__5)]

  ########################### VARIABLES ###################################

  # Assign city names to variables to create shorter commands

BA = 'Bel Air (1st)'
RH = 'Rolling Hills (3rd)'
LHH = 'La Habra Height (11th)'
B = 'Beverlywood (33rd)'
C = 'Cerritos (36th)'
SC = 'Santa Clarita (50th)'

  # BA, RH, LHH, B, C, SC

CP = 'Canoga Park (187th)'
LB = 'Long Beach (189th)'
VG = 'Valley Glen (208th)'
FL = 'Florence (257th)'
VK = 'Vermont Knolls (259th)'
UP = 'University Park (264th)'

  # CP, LB, VG, FL, VK, UP

  #List of liq. stores and Grocery stores by income

  # Combining High Income Cities

HI_gs1 = c(Bel_Air_gs1, Rolling_Hills_gs1, La_Habra_Height_gs1, Beverlywood_gs1, Cerritos_gs1,
           Santa_Clarita_gs1);
HI_gs2 = c(Bel_Air_gs2, Rolling_Hills_gs2, La_Habra_Height_gs2, Beverlywood_gs2, Cerritos_gs2,
           Santa_Clarita_gs2);
HI_ls1 = c(Bel_Air_ls1, Rolling_Hills_ls1, La_Habra_Height_ls1, Beverlywood_ls1, Cerritos_ls1,
           Santa_Clarita_ls1);
HI_ls2 = c(Bel_Air_ls2, Rolling_Hills_ls2, La_Habra_Height_ls2, Beverlywood_ls2, Cerritos_ls2,
           Santa_Clarita_ls2);

  # Combining Low Income Cities

LI_gs1 = c(Canoga_Park_gs1, Long_Beach_gs1, Valley_Glen_gs1, Florence_gs1, Vermont_Knolls_gs1,
           University_Park_gs1)
LI_gs2 = c(Canoga_Park_gs2, Long_Beach_gs2, Valley_Glen_gs2, Florence_gs2, Vermont_Knolls_gs2,
           University_Park_gs2);
LI_ls1 = c(Canoga_Park_ls1, Long_Beach_ls1, Valley_Glen_ls1, Florence_ls1, Vermont_Knolls_ls1,
           University_Park_ls1)
LI_ls2 = c(Canoga_Park_ls2, Long_Beach_ls2, Valley_Glen_ls2, Florence_ls2, Vermont_Knolls_ls2,
           University_Park_ls2)



  ######################## BOXPLOTS ############################

  # boxplot of HIGH INCOME grocery and convenience store 1 #

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
legend("topright", legend = c("Grocery Store", "Convenience Store"), col=c("dodgerblue" , "purple"),
       pch = 15, bty = "n", pt.cex = 3, cex = 1.2,  horiz = FALSE)

  # boxplot of LOW INCOME grocery and convenience store 1

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
legend("topright", legend = c("Grocery Store", "Convenience Store"), col=c("dodgerblue" , "purple"),
       pch = 15, bty = "n", pt.cex = 3, cex = 1.2)

  # general boxplots

boxplot(HI_gs1, HI_ls1, HI_gs2, HI_ls2, LI_gs1, LI_ls1, LI_gs2, LI_ls2,
        main = 'Grocery and Convenience Stores', 
        ylab = 'Distance (m)',boxwex=0.4, xaxt = "n", 
        col=c("dodgerblue" , "purple"))

my_names = c("1", "2" , "1" , "2");
axis(1, at = seq(1.5 , 8 , 2), labels = my_names , tick=F , cex=0.3)

axis(1, at = seq(2.5 , 8 , 4), 
     labels = c("High Income", "Low Income"), 
     tick=F , cex=0.9, line = 2)

for(i in seq(0.5 , 20 , 2)){ abline(v=i,lty=1, col="grey")}
legend("topright", legend = c("Grocery Store", "Convenient Store"), col=c("dodgerblue" , "purple"),
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



  ####################### LINEAR REGRESSIONS ###################################

  # Linear Regression for High Income 1

plot(HI_ls1, HI_gs1, xlab='Convenience Store Distance (m)', ylab='Grocery Store Distance (m)', 
     main='High Income: Grocery vs. Convenience Store 1', col = c('red' , 'blue'))
legend("bottomright", legend = c("Grocery Store", "Convenience Store"), col=c("red" , "blue"),
       pch = 1, bty = "n", pt.cex = 3, cex = 1.2)
lm1 = lm(HI_gs1~HI_ls1)
abline(lm1)
summary(lm1)

  # Linear Regression for Low Income 1 

plot(LI_ls1, LI_gs1, xlab='Convenience Store Distance (m)', ylab='Grocery Store Distance (m)', 
     main='Low Income: Grocery vs. Convenience Store 1', col = c('red', 'blue'))
legend("bottomright", legend = c("Grocery Store", "Convenience Store"), col=c("red" , "blue"),
       pch = 1, bty = "n", pt.cex = 3, cex = 1.2)
lm2 = lm(LI_gs1~LI_ls1)
abline(lm2)
summary(lm2)

  # All grocery and liquor stores combined

LI_gs = c(LI_gs1, LI_gs2)
LI_ls = c(LI_ls1, LI_ls2)

HI_gs = c(HI_gs1, HI_gs2)
HI_ls = c(HI_ls1, HI_ls2)

  # Linear Regression for All High Income

plot(HI_ls, HI_gs, xlab='Convenience Store Distance (m)', ylab='Grocery Store Distance (m)', 
     main='High Income: Grocery vs. Convenience Stores', col = c('red', 'blue'))
legend("bottomright", legend = c("Grocery Store", "Convenience Store"), col=c("red" , "blue"),
       pch = 1, bty = "n", pt.cex = 3, cex = 1.2)
lm3 = lm(HI_gs~HI_ls)
abline(lm3)
summary(lm3)

  # Linear Regression for All Low Income

plot(LI_ls, LI_gs, xlab='Convenience Store Distance (m)', ylab='Grocery Store Distance (m)', 
     main='Low Income: Grocery vs. Convenience Stores', col = c('red', 'blue') )
legend("bottomright", legend = c("Grocery Store", "Convenience Store"), col=c("red" , "blue"),
       pch = 1, bty = "n", pt.cex = 3, cex = 1.2)
lm4 = lm(LI_gs~LI_ls)
abline(lm4)
summary(lm4)

    ################### LINEAR REGRESSION BY CITY #########################

    # library
library(ggplot2)

    # Creating Data Frame

Bel_Air <- rep('Bel Air', 50)
Beverlywood <- rep('Beverlywood', 25)
Canoga_Park <- rep('Canoga Park', 25)
Cerritos <- rep('Cerritos' , 25)
Florence <- rep('Florence', 25)
La_Habra_Height <- rep('La Habra Height', 25)
Long_Beach <- rep('Long Beach', 25)
Rolling_Hills <- rep('Rolling Hills', 25)
Santa_Clarita <- rep('Santa Clarita', 25)
University_Park <- rep('University Park', 50)
Valley_Glen <- rep('Valley Glen', 25)
Vermont_Knolls <- rep('Valley Knolls', 25)

    ################## LR HIGH INCOME BY CITY ########################

  # Store 1

HCity <- factor(c(Bel_Air, Rolling_Hills, La_Habra_Height, Beverlywood, Cerritos,
                 Santa_Clarita))

High_Income_Cities <- data.frame(HI_gs1, HI_gs2, HI_ls1, HI_ls2, HCity)

  # Calculate slope and intercept of line of best fit

interc_HI1 <- coef(lm(HI_gs1 ~ HI_ls1, data = mtcars))

ggplot(High_Income_Cities, aes(x=High_Income_Cities$HI_ls1, y=High_Income_Cities$HI_gs1, 
                               color=HCity, shape=HCity)) + 
  geom_point(size=6, alpha=0.6) + 
  geom_abline(intercept = interc_HI1[1], slope = interc_HI1[2])+
  xlab("Distance to Convenience Store (m)") +
  ylab("Distance to Grocery Store (m)") +
  ggtitle("High Income: Grocery vs. Convenience Store 1") +
  theme(plot.title = element_text(hjust = 0.5))

    ################# LR LOW INCOME BY CITY #########################
  
  # Store 1

LCity <- factor(c(Canoga_Park, Long_Beach, Valley_Glen, Florence, Vermont_Knolls,
               University_Park))

Low_Income_Cities <- data.frame(LI_gs1, LI_gs2, LI_ls1, LI_ls2, LCity)

  # Calculate slope and intercept of line of best fit

interc_LI1 <- coef(lm(LI_gs1 ~ LI_ls1, data = mtcars))

  # Input the intercept and slope from the above into the geom_abline 

ggplot(Low_Income_Cities, aes(x=Low_Income_Cities$LI_ls1, y=Low_Income_Cities$LI_gs1, 
                               color=LCity, shape=LCity)) + 
  geom_point(size=6, alpha=0.6) + 
  geom_abline(intercept = interc_LI1[1], slope = interc_LI1[2]) +
  xlab("Distance to Convenience Store (m)") +
  ylab("Distance to Grocery Store (m)") +
  ggtitle('Low Income: Grocery vs. Convenience Store 1') +
  theme(plot.title = element_text(hjust = 0.5))

  ############## T-TEST FOR INDIVIDUAL CITIES #####################

             ####### HIGH INCOME CITIES

# Bel Air (1st)

t.test(Bel_Air_gs1, Bel_Air_ls1, var.equal = TRUE)

# Rolling Hills (3rd)

t.test(Rolling_Hills_gs1, Rolling_Hills_ls1, var.equal = TRUE)

# La Habra Height (11th)

t.test(La_Habra_Height_gs1, La_Habra_Height_ls1, var.equal = TRUE)

# Beverlywood (33rd)

t.test(Beverlywood_gs1, Beverlywood_ls1, var.equal = TRUE)

# Cerritos (36th)

t.test(Cerritos_gs1, Cerritos_ls1, var.equal = TRUE)

# Santa Clarita (50th)

t.test(Santa_Clarita_gs1, Santa_Clarita_ls1, var.equal = TRUE)

           ####### LOW INCOME CITIES

# Canoga Park (187th)

t.test(Canoga_Park_gs1, Canoga_Park_ls1, var.equal = TRUE)

# Long Beach (189th)

t.test(Long_Beach_gs1, Long_Beach_ls1, var.equal = TRUE)

# Valley Glen (208th)

t.test(Valley_Glen_gs1, Valley_Glen_ls1, var.equal = TRUE)

# Florence (257th)

t.test(Florence_gs1, Florence_ls1, var.equal = TRUE)

# Vermont Knolls (259th)

t.test(Vermont_Knolls_gs1, Vermont_Knolls_ls1, var.equal = TRUE)

# University Park (264th)

t.test(University_Park_gs1, University_Park_ls1, var.equal = TRUE)



######################## CORRELATION TEST ##########################

  # High Income

cor.test(HI_ls1, HI_gs2)

  # Low Income

cor.test(LI_ls1, LI_gs2)
