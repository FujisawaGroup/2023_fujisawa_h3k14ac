#prediction of mean and SD (Akdult et al., 2022 CLD)
library(purrr)
library(estmeansd)

data_IQR <- read.csv("/Users/takaofujisawa/Desktop/Data/H3K14ac/metaanalysis/mean_sd_prediction_IQRminmax.csv")
results2 <- vector("list", nrow(data_IQR))

for (i in 1:nrow(data_IQR)) {
  results2[[i]] <- qe.mean.sd(n = data_IQR$n[i], q1.val = data_IQR$median[i]-data_IQR$IQR[i]/2, med.val = data_IQR$median[i], q3.val = data_IQR$median[i]+data_IQR$IQR[i]/2)
}

#output
results_df2 <- do.call(rbind, results2)
results_df2
