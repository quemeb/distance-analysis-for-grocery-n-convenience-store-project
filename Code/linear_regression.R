### SUPERVISED LEARNING

library(ggplot2)
### Creating Data Frame

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


HCity <- factor(c(Bel_Air, Rolling_Hills, La_Habra_Height, Beverlywood, Cerritos,
                  Santa_Clarita))

# High-income data frame
High_Income_Cities <- data.frame(HI_gs1, HI_gs2, HI_ls1, HI_ls2, HCity)

# Calculate slope and intercept of line of best fit
lm1 <- lm(HI_gs1 ~ HI_ls1)
interc_HI1 <- coef(lm1)

ggplot(High_Income_Cities, aes(x=HI_ls1, y=HI_gs1, color=HCity, shape=HCity)) + 
  geom_point(size=2, alpha=0.6) + 
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE) +
  xlab("Distance to Convenience Store (m)") +
  ylab("Distance to Grocery Store (m)") +
  ggtitle("High Income: Grocery vs. Convenience Store 1") +
  theme(plot.title = element_text(hjust = 0.5))

ggplot(High_Income_Cities, aes(x=HI_ls1, y=HI_gs1, color=HCity, shape=HCity)) + 
  geom_point(size=2, alpha=0.6) + 
  geom_abline(intercept = interc_HI1[1], slope = interc_HI1[2])+
  xlab("Distance to Convenience Store (m)") +
  ylab("Distance to Grocery Store (m)") +
  ggtitle("High Income: Grocery vs. Convenience Store 1") +
  theme(plot.title = element_text(hjust = 0.5))


### LOW-INCOME

# Store 1

LCity <- factor(c(Canoga_Park, Long_Beach, Valley_Glen, Florence, Vermont_Knolls,
                  University_Park))

Low_Income_Cities <- data.frame(LI_gs1, LI_gs2, LI_ls1, LI_ls2, LCity)

# Calculate slope and intercept of line of best fit

interc_LI1 <- coef(lm(LI_gs1 ~ LI_ls1, data = mtcars))

# Input the intercept and slope from the above into the geom_abline 

ggplot(Low_Income_Cities, aes(x=Low_Income_Cities$LI_ls1, y=Low_Income_Cities$LI_gs1, 
                              color=LCity, shape=LCity)) + 
  geom_point(size=2) + 
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE) +
  xlab("Distance to Convenience Store (m)") +
  ylab("Distance to Grocery Store (m)") +
  ggtitle('Low Income: Grocery vs. Convenience Store 1') +
  theme(plot.title = element_text(hjust = 0.5)) 



ggplot(Low_Income_Cities, aes(x=Low_Income_Cities$LI_ls1, y=Low_Income_Cities$LI_gs1, 
                              color=LCity, shape=LCity)) + 
  geom_point(size=2) + 
  geom_abline(intercept = interc_LI1[1], slope = interc_LI1[2]) +
  xlab("Distance to Convenience Store (m)") +
  ylab("Distance to Grocery Store (m)") +
  ggtitle('Low Income: Grocery vs. Convenience Store 1') +
  theme(plot.title = element_text(hjust = 0.5))
