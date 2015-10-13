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

barima <- function(input){
                                        #input can either be csv file or data	
    newdata <- if(is.character(input) && file.exists(input)){
        read.csv(input)
    } else {
        as.data.frame(input)
    }
                                        #  return(newdata)
    
                                        #  stopifnot("age" %in% names(newdata))
                                        #  stopifnot("marital" %in% names(newdata))
    
                                        #  newdata$age <- as.numeric(newdata$age)

                                        #tv_model is included with the package
                                        #  newdata$tv <- as.vector(predict.gam(tv_model, newdata = newdata))

                                        #  testgg <- c(2,3,5);

                                        #  return(testgg)
                                        #  return(newdata)


                                        #4974780, 5051974, 4976702, 4941353, 4863064, 4778003, 4777013, 4856907, 5065171, 5538048, 5187031, 5128478, 4879649, 4891878, 4989730, 4993284, 4841906, 4769946, 4704377, 4556177, 4589243, 4785520, 4816480, 4695779, 4645886, 4587213, 4484760, 4520141, 4704222, 4788531, 4694898

                                        #kings <- scan("http://10.9.222.23/kings.dat",skip=3);
                                        #kings <- c(4974780, 5051974, 4976702, 4941353, 4863064, 4778003, 4777013, 4856907, 5065171, 5538048, 5187031, 5128478, 4879649, 4891878, 4989730, 4993284, 4841906, 4769946, 4704377, 4556177, 4589243, 4785520, 4816480, 4695779, 4645886, 4587213, 4484760, 4520141, 4704222, 4788531, 4694898);
                                        #kings;

    kings <- newdata;

                                        #auto.arima(kings);

    kingstimeseries <- ts(kings)
                                        #kingstimeseries

                                        #plot.ts(kingstimeseries)
                                        #plot(kingstimeseries)

                                        #themodel = arima(flow, order = c(1,0,0), seasonal = list(order = c(0,1,1), period = 12))
                                        #themodel = arima(kingstimeseries, order = c(1,0,0), seasonal = list(order = c(0,1,1), period = 12))
                                        #themodel = arima(kingstimeseries, order = c(0,1,0))
    themodel = arima(kingstimeseries, order = c(1,1,1))

                                        #themodel
    res = predict(themodel, n.ahead=5)

    return(res);
}
