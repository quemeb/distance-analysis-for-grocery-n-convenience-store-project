## Obtaining Stats

summary(LI_gs1)
sd(LI_gs1)

summary(LI_gs2)
sd(LI_gs2)

summary(LI_ls1)
sd(LI_ls1)

summary(LI_ls2)
sd(LI_ls2)

summary(HI_gs1)
sd(HI_gs1)

summary(HI_gs2)
sd(HI_gs2)

summary(HI_ls1)
sd(HI_ls1)

summary(HI_ls2)
sd(HI_ls2)

## T-test for income levels

t.test(LI_ls1, LI_gs1, var.equal = TRUE)
t.test(LI_ls1, LI_gs2, var.equal = TRUE)
t.test(LI_ls2, LI_gs1, var.equal = TRUE)
t.test(LI_ls2, LI_gs2, var.equal = TRUE)
t.test(HI_ls1, HI_gs1, var.equal = TRUE)
t.test(HI_ls1, HI_gs2, var.equal = TRUE)
t.test(HI_ls2, HI_gs1, var.equal = TRUE)
t.test(HI_ls2, HI_gs2, var.equal = TRUE)



### T-TEST FOR INDIVIDUAL CITIES 

### HIGH INCOME CITIES

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


### LOW INCOME CITIES

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


### CORRELATION TEST 

# High Income GS-1 vs CS-1
cor.test(HI_ls1, HI_gs1)

# Low Income GS-1 vs CS-1
cor.test(LI_ls1, LI_gs1)