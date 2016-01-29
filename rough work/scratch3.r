calcDollars <- function(num, code){
        
         code <- toString(code)
#    
         code <- toupper(substring(str_trim(code),1,1))
         
         num <- as.double(num)
         return_val <- as.double(num)
#         
#         write(paste(c(code, "\n"), append = "\t") ,file="out2.txt",append=TRUE)
# 
#         
#         if(code == "B"){return_val = num * 10^9}
#         if(code == "M"){return_val = num * 10^6}
         if(code == "K"){
                print(code)
                return_val = num * 10^3
         
        }
#         if(code == "H"){return_val = num * 10^2}
#         
         
         print(nchar(code))
         
        # print(code)
         return(return_val)
         
}


getMult <- function(code){

        code <- toupper(substring(code,1,1))
        write(paste(c(code, "\n"), append = "\t") ,file="out2.txt",append=TRUE)
        return_val <- as.double(0)
        
        print(code)
        
        if(code == "B"){return_val = 10^9}
        if(code == "M"){return_val = 10^6}
        if(code == "K"){
                print(code) 
                return_val = 10^3
                
        }
        if(code == "H"){return_val =  10^2}
        
        return(return_val)
}
