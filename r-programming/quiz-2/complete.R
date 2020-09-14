complete <- function(dir = 'specdata', id = 1:332) {
  files <- paste(dir, list.files(dir)[id], sep = '/')
  ds <- data.frame(id, rep(0, length(id)))
  names(ds) <- c('id', 'nobs')
  i <- 1
  
  for (file in files) {
    df <- read.csv(file)
    df <- na.omit(df)
    ds[i, 'nobs'] <- nrow(df)
    i <- i + 1
  }
  
  return(ds)
}
