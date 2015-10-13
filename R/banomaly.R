
library(AnomalyDetection)

banomaly <- function(input){
    library(AnomalyDetection)
    
    newdata1 <- if(is.character(input) && file.exists(input)){
        read.csv(input)
    } else {
        as.data.frame(input)
    }

    return(newdata1)

#    data(raw_data)
#    res = AnomalyDetectionTs(raw_data, max_anoms=0.02, direction='both', plot=TRUE)
    res = AnomalyDetectionTs(newdata1, max_anoms=0.02, direction='both', plot=TRUE)
    return(res$anoms)
}
