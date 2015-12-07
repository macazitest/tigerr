
anomalybatch <- function(input){
    
    dataobj <- input$data;

    dims <- attributes(dataobj);

#    for(dim in names(dims)){

    reslist <- list();

    library(AnomalyDetection)
    
    for(name in names(dataobj)){
#        curdata <- as.data.frame(attr(dataobj, dim));
        curdata <- dataobj[[name]];
        reslist[[name]] <- AnomalyDetectionTs(curdata, max_anoms=input$max_anoms, direction='both', only_last='day', plot=FALSE)
#        return(curdata);
    }

    return(reslist);
    
}
