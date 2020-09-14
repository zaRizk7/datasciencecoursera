pollutantmean <-
  function(dir = 'specdata',
           pollutant = 'sulfate',
           id = 1:332) {
    files <- paste(dir, list.files(dir)[id], sep = '/')
    ds <- do.call(rbind, lapply(files, read.csv))
    ds <- na.omit(ds)
    ds <- ds[, pollutant]
    
    return(mean(ds))
  }
