calcDollars <- function(num, code){
        
        num <= as.double(num)
        return_val <- as.double(num)
        code <- toupper(code)
        
        if(code == "B"){return_val = num * 1000000000}
        
        if(code == "M"){return_val = num * 1000000}
        
        if(code == "K"){return_val = num * 1000}
        
        if(code == "H"){return_val = num * 100}
        
        return(return_val)
  
}