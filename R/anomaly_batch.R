
anomalybatch <- function(input){
    newdata1 <- if(is.character(input) && file.exists(input)){
        read.csv(input)
    } else {
        as.data.frame(input$data)
    }

    dataobj <- input$data;

    dims <- attributes(dataobj);

#    for(dim in names(dims)){
    for(name in names(dataobj)){
#        curdata <- as.data.frame(attr(dataobj, dim));
        curdata <- dataobj[[name]];
        return curdata;
    }

                                        #    return(newdata1)
    library(AnomalyDetection)
    
#    data(raw_data)
#    res = AnomalyDetectionTs(raw_data, max_anoms=0.02, direction='both', plot=TRUE)
#    res = AnomalyDetectionTs(newdata1, max_anoms=0.02, direction='both', plot=FALSE)

    return(input);

    return(newdata1);
    
    res = AnomalyDetectionTs(newdata1, max_anoms=input$max_anoms, direction='both', plot=FALSE)
    
    return(res$anoms)
}
