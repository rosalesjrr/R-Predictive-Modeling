```{r}
#CHUNK 16
data.mortality$smoker_sex <- paste(data.mortality$smoker, data.mortality$sex, sep = "_")
data.mortality$smoker_sex_uwtype <- paste(data.mortality$smoker, data.mortality$sex, data.mortality$uwtype, sep = "_")

```
