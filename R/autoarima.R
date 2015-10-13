#' Score the TV watching model
#' 
#' Simple model with two predictor \code{age} (value between 20 and 80) and \code{marital} 
#' ("MARRIED", 'DIVORCED", "WIDOWED or "NEVER MARRIED").
#' 
#' @export
#' @importFrom mgcv predict.gam
#' @param input data passed on as \code{newdata} to \code{\link{predict}}
#' @examples mydata <- data.frame(
#'    age=c(24, 54, 32, 75),
#'    marital=c("MARRIED", "DIVORCED", "WIDOWED", "NEVER MARRIED")
#' )
#' tv(mydata)

#require("astsa");
#library(forecast);

autoarima <- function(input){
                                        #input can either be csv file or data	
    newdata <- if(is.character(input) && file.exists(input)){
        read.csv(input)
    } else {
        as.data.frame(input)
    }

    return(newdata);

    library(forecast)

    kings <- newdata;

                                        #    kingstimeseries <- ts(kings)
    kingst <- auto.arima(kings);
    
    res = forecast(kingst, h=10);

#    return(res$mean);
#    return(kings);
}
