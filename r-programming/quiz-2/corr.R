source('complete.R')

corr <- function(dir = 'specdata', threshold = 0) {
  c <- complete()
  c <- subset(c, c$nobs > threshold)
  c <- c$id
  v <- c()
  
  if (length(c) > 0) {
    files <- paste(dir, list.files(dir)[c], sep = '/')
    for (file in files) {
      df <- read.csv(file)
      df <- na.omit(df)
      v <- c(v, cor(df$sulfate, df$nitrate))
    }
  }
  
  return(v)
}