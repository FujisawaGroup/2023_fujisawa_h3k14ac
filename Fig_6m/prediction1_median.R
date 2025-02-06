# prediction of mean and SD (Gurden et al., 1998)

library(purrr)
library(estmeansd)

data_median <- read.csv("mean_sd_prediction_median.csv")
results1 <- vector("list", nrow(data_median))

for (i in 1:nrow(data_median)) {
  results1[[i]] <- qe.mean.sd(n = data_median$n[i], q1.val = data_median$q1[i], med.val = data_median$median[i], q3.val = data_median$q3[i])
}

#output
results_df1 <- do.call(rbind, results1)
results_df1





