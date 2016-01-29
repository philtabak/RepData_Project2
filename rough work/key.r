h = 10^2
k = 10^3
th = 10^4
hh = 10^5
m = 10^6
b = 10^9



key <- data.frame(
        c( "H", "h", "2", 
           "k", "K", "3", 
           "m", "M", "6", 
           "b", "B","9"),
        c( h, h, h,
           k, k, k,
           m, m, m,
           b, b, b)
        
)

 
colnames(key) <- c("key", "value")