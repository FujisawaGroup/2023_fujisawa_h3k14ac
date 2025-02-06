library(meta)
library(metafor)

data_liver <- read.csv("data_for_analysis.csv")

data_liver <- escalc(
  measure = "MD",
  m1i = m1, sd1i = s1, n1i = n1,
  m2i = m2, sd2i = s2, n2i = n2,
  data = data_liver
)

model_liver <- rma.mv(
  yi = yi, V = vi,                    
  random = ~ 1 | Source / ID,  
  data = data_liver
)

summary(model_liver)
forest(model_liver, col = "red", slab = data_liver$Source,xlim=c(-300,300),at = c(-300,-200,-100,0,100,200,300))





