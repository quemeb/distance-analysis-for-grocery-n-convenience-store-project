library(ggplot2)
library(rgl)

high <- file.choose()
high_income <- read.csv(high)
attach(high_income)

# assigns values to variables for easier interpretation 

Rolling_Hills_gs1 = as.numeric(hgs1[!is.na(hgs1)])
Rolling_Hills_gs2 = as.numeric(hgs2[!is.na(hgs2)])
Rolling_Hills_ls1 = as.numeric(hls1[!is.na(hls1)])     
Rolling_Hills_ls2 = as.numeric(hls2[!is.na(hls2)])

Cerritos_gs1 = as.numeric(hgs1.1[!is.na(hgs1.1)])
Cerritos_gs2 = as.numeric(hgs2.1[!is.na(hgs2.1)])
Cerritos_ls1 = as.numeric(hls1.1[!is.na(hls1.1)])
Cerritos_ls2 = as.numeric(hls2.1[!is.na(hls2.1)])

La_Habra_Height_gs1 = as.numeric(hgs1.2[!is.na(hgs1.2)])
La_Habra_Height_gs2 = as.numeric(hgs2.2[!is.na(hgs2.2)])
La_Habra_Height_ls1 = as.numeric(hls1.2[!is.na(hls1.2)])
La_Habra_Height_ls2 = as.numeric(hls2.2[!is.na(hls2.2)])

Bel_Air_gs1 = as.numeric(hgs1.3[!is.na(hgs1.3)])
Bel_Air_gs2 = as.numeric(hgs2.3[!is.na(hgs2.3)])
Bel_Air_ls1 = as.numeric(hls1.3[!is.na(hls1.3)])
Bel_Air_ls2 = as.numeric(hls2.3[!is.na(hls2.3)])

Beverlywood_gs1 = as.numeric(hgs1.4[!is.na(hgs1.4)])
Beverlywood_gs2 = as.numeric(hgs2.4[!is.na(hgs2.4)])
Beverlywood_ls1 = as.numeric(hls1.4[!is.na(hls1.4)])
Beverlywood_ls2 = as.numeric(hls2.4[!is.na(hls2.4)])

Santa_Clarita_gs1 = as.numeric(hgs1.5[!is.na(hgs1.5)])
Santa_Clarita_gs2 = as.numeric(hgs2.5[!is.na(hgs2.5)])
Santa_Clarita_ls1 = as.numeric(hls1.5[!is.na(hls1.5)])
Santa_Clarita_ls2 = as.numeric(hls2.5[!is.na(hls2.5)])

# assigns values to variables for easier interpretation 

low <- file.choose()
low_income <- read.csv(low)
attach(low_income)

Canoga_Park_gs1 = as.numeric(gs1[!is.na(gs1)])
Canoga_Park_gs2 = as.numeric(gs2[!is.na(gs2)])
Canoga_Park_ls1 = as.numeric(ls1[!is.na(ls1)])
Canoga_Park_ls2 = as.numeric(ls2[!is.na(ls2)])

Valley_Glen_gs1 = as.numeric(gs1.1[!is.na(gs1.1)])
Valley_Glen_gs2 = as.numeric(gs2.1[!is.na(gs2.1)])
Valley_Glen_ls1 = as.numeric(ls1.1[!is.na(ls1.1)])
Valley_Glen_ls2 = as.numeric(ls2.1[!is.na(ls2.1)])

Florence_gs1 = as.numeric(gs1.2[!is.na(gs1.2)])
Florence_gs2 = as.numeric(gs2.2[!is.na(gs2.2)])
Florence_ls1 = as.numeric(ls1.2[!is.na(ls1.2)])
Florence_ls2 = as.numeric(ls2.2[!is.na(ls2.2)])

University_Park_gs1 = as.numeric(gs1.3[!is.na(gs1.3)])
University_Park_gs2 = as.numeric(gs2.3[!is.na(gs2.3)])
University_Park_ls1 = as.numeric(ls1.3[!is.na(ls1.3)])
University_Park_ls2 = as.numeric(ls2.3[!is.na(ls2.3)])

Vermont_Knolls_gs1 = as.numeric(gs1.4[!is.na(gs1.4)])
Vermont_Knolls_gs2 = as.numeric(gs2.4[!is.na(gs2.4)])
Vermont_Knolls_ls1 = as.numeric(ls1.4[!is.na(ls1.4)])
Vermont_Knolls_ls2 = as.numeric(ls2.4[!is.na(ls2.4)])

Long_Beach_gs1 = as.numeric(gs1.5[!is.na(gs1.5)])
Long_Beach_gs2 = as.numeric(gs2.5[!is.na(gs2.5)])
Long_Beach_ls1 = as.numeric(ls1.5[!is.na(ls1.5)])
Long_Beach_ls2 = as.numeric(ls2.5[!is.na(ls2.5)])

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

HI_gs1 <- c(Bel_Air_gs1, Rolling_Hills_gs1, La_Habra_Height_gs1, Beverlywood_gs1, Cerritos_gs1,
           Santa_Clarita_gs1)
HI_gs2 <- c(Bel_Air_gs2, Rolling_Hills_gs2, La_Habra_Height_gs2, Beverlywood_gs2, Cerritos_gs2,
           Santa_Clarita_gs2)
HI_ls1 <- c(Bel_Air_ls1, Rolling_Hills_ls1, La_Habra_Height_ls1, Beverlywood_ls1, Cerritos_ls1,
           Santa_Clarita_ls1)
HI_ls2 <- c(Bel_Air_ls2, Rolling_Hills_ls2, La_Habra_Height_ls2, Beverlywood_ls2, Cerritos_ls2,
           Santa_Clarita_ls2)


# Combining Low Income Cities

LI_gs1 = c(Canoga_Park_gs1, Long_Beach_gs1, Valley_Glen_gs1, Florence_gs1, Vermont_Knolls_gs1,
           University_Park_gs1)
LI_gs2 = c(Canoga_Park_gs2, Long_Beach_gs2, Valley_Glen_gs2, Florence_gs2, Vermont_Knolls_gs2,
           University_Park_gs2)
LI_ls1 = c(Canoga_Park_ls1, Long_Beach_ls1, Valley_Glen_ls1, Florence_ls1, Vermont_Knolls_ls1,
           University_Park_ls1)
LI_ls2 = c(Canoga_Park_ls2, Long_Beach_ls2, Valley_Glen_ls2, Florence_ls2, Vermont_Knolls_ls2,
           University_Park_ls2)

# All grocery and liqour stores combined

LI_gs = c(LI_gs1, LI_gs2)
LI_ls = c(LI_ls1, LI_ls2)

HI_gs = c(HI_gs1, HI_gs2)
HI_ls = c(HI_ls1, HI_ls2)
