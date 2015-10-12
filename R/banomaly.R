
library(AnomalyDetection)

banomaly <- function(input){
    library(AnomalyDetection)
    
    newdata <- if(is.character(input) && file.exists(input)){
        read.csv(input)
    } else {
        as.data.frame(input)
    }

    return(newdata)

#    data(raw_data)
#    res = AnomalyDetectionTs(raw_data, max_anoms=0.02, direction='both', plot=TRUE)
    res = AnomalyDetectionTs(newdata, max_anoms=0.02, direction='both', plot=TRUE)
    return(res$anoms)
}
