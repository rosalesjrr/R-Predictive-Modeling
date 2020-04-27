```{r}
#CHUNK 15
library(caret)

# List the variables we want to binarize
vars.bin <- c("sex", "smoker", "prodcat", "region", "distchan", "uwkey", "uwtype", "resind_ind")

# dummyVars is not compatible with factors
for (var in vars.bin) {
  data.mortality[, var] <- as.character(data.mortality[, var])
}

# Binarize variables
binarizer <- caret::dummyVars(paste("~", paste(vars.bin, collapse = "+")) , data = data.mortality, fullRank = F)
data.mortality <- cbind(data.mortality,
                        data.frame(predict(binarizer, newdata = data.mortality)))

```
