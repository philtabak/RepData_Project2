
> storm_data <- read.csv(bzfile(local_filename), strip.white=TRUE)
> View(storm_data)
> hist(storm_data$BGN_DATE)
Error in hist.default(storm_data$BGN_DATE) : 'x' must be numeric
> summary(storm_data$BGN_DATE)
 5/25/2011 0:00:00  4/27/2011 0:00:00   6/9/2011 0:00:00  5/30/2004 0:00:00   4/4/2011 0:00:00   4/2/2006 0:00:00   4/7/2006 0:00:00 
              1202               1193               1030               1016               1009                981                973 
 4/19/2011 0:00:00  5/31/1998 0:00:00  5/22/2011 0:00:00   6/4/2008 0:00:00  5/21/2004 0:00:00  5/26/2011 0:00:00  3/12/2006 0:00:00 
               970                933                919                900                899                885                883 
 6/21/2011 0:00:00   5/6/2003 0:00:00   4/3/2007 0:00:00  5/24/2004 0:00:00  6/10/2008 0:00:00  5/25/2008 0:00:00  5/18/1995 0:00:00 
               876                830                801                798                782                779                766 
  6/8/2008 0:00:00 10/26/2010 0:00:00  6/15/2009 0:00:00  2/11/2009 0:00:00 10/24/2001 0:00:00  4/26/2011 0:00:00   6/1/2011 0:00:00 
               766                761                754                739                738                736                729 
 5/10/2003 0:00:00  6/22/2006 0:00:00  1/29/2008 0:00:00  5/24/2011 0:00:00   6/6/2005 0:00:00   6/2/2004 0:00:00  4/10/2009 0:00:00 
               728                726                721                720                718                708                704 
 7/22/2008 0:00:00  6/18/1998 0:00:00  6/18/2011 0:00:00   6/5/2008 0:00:00  5/23/2011 0:00:00  5/25/2006 0:00:00  7/21/2003 0:00:00 
               698                695                693                689                681                680                680 
  8/1/2011 0:00:00  4/28/2002 0:00:00  4/18/2002 0:00:00 11/10/2002 0:00:00  6/20/2011 0:00:00   8/2/2008 0:00:00  6/16/2008 0:00:00 
               670                669                665                657                657                654                649 
 4/22/2005 0:00:00   6/4/2002 0:00:00  6/11/2003 0:00:00  6/15/2008 0:00:00  7/11/2011 0:00:00  4/25/2011 0:00:00  5/24/2010 0:00:00 
               646                639                637                637                637                636                631 
 6/18/2009 0:00:00  5/17/1999 0:00:00  4/15/2011 0:00:00  6/22/2008 0:00:00   5/4/2003 0:00:00  6/29/1998 0:00:00   7/4/2003 0:00:00 
               628                623                622                620                615                614                611 
  6/8/2011 0:00:00   6/1/2008 0:00:00   2/5/2008 0:00:00  7/20/2000 0:00:00  6/12/2004 0:00:00  6/17/2009 0:00:00   4/5/2011 0:00:00 
               609                608                602                601                596                596                595 
 5/15/1998 0:00:00  6/19/2007 0:00:00  5/18/2000 0:00:00   4/9/2011 0:00:00  6/26/2008 0:00:00   8/5/2010 0:00:00  6/14/2001 0:00:00 
               592                592                589                588                588                588                584 
  3/9/2006 0:00:00   6/4/2005 0:00:00  5/11/2011 0:00:00   5/2/2003 0:00:00   7/9/2003 0:00:00  6/12/2001 0:00:00  6/18/2010 0:00:00 
               583                583                580                580                579                578                577 
 6/26/2009 0:00:00 11/11/1995 0:00:00  6/15/2010 0:00:00  5/27/2001 0:00:00   7/5/2004 0:00:00  6/21/2006 0:00:00   6/5/2005 0:00:00 
               573                572                567                565                564                561                561 
  4/8/1998 0:00:00  8/18/2011 0:00:00  8/28/2011 0:00:00   7/1/2011 0:00:00   5/8/2009 0:00:00  4/26/1994 0:00:00  7/13/2004 0:00:00 
               559                556                556                552                551                550                550 
 6/26/2011 0:00:00            (Other) 
               549             833617 
> hist.POSIXt(storm_data$BGN_DATE)
Error: could not find function "hist.POSIXt"
> packages.install('POSIXt')
Error: could not find function "packages.install"
> install.packages('POSIXt')
Warning in install.packages :
  package ‘POSIXt’ is not available (for R version 3.2.2)
> quantile(storm_data$BGN_DATE)
Error in quantile.default(storm_data$BGN_DATE) : factors are not allowed
> ?gsub
> gsub("\d\d?/\d\d?\(\d\d\d\d).*", "\1", "4/18/1950 0:00:00"")
Error: '\d' is an unrecognized escape in character string starting ""\d"
> gsub('\d\d?/\d\d?\(\d\d\d\d).*', "\1", "4/18/1950 0:00:00"")
Error: '\d' is an unrecognized escape in character string starting "'\d"
> gsub('\\d\\d?/\\d\\d?\(\\d\\d\\d\\d).*', "\1", "4/18/1950 0:00:00"")
Error: '\(' is an unrecognized escape in character string starting "'\\d\\d?/\\d\\d?\("
> gsub('\\d\\d?/\\d\\d?/(\\d\\d\\d\\d).*', "\1", "4/18/1950 0:00:00"")
+ )
+ 
+ 
+ 

> gsub('\\d\\d?/\\d\\d?/(\\d\\d\\d\\d).*', "\1", "4/18/1950 0:00:00"", perl = TRUE)
+ )
+ 

> gsub("\\d\\d?/\\d\\d?/(\\d\\d\\d\\d).*", "\1", "4/18/1950 0:00:00)
+ )
+ 

> gsub("\\d\\d?/\\d\\d?/(\\d\\d\\d\\d).*", "\1", "4/18/1950 0:00:00")
[1] "\001"
> gsub("\\d/\\d\\d/(\\d\\d\\d\\d).*", "\1", "4/18/1950 0:00:00")
[1] "\001"
> gsub("\\d\\d?/\\d\\d?/(\\d\\d\\d\\d).*", \"\1", "4/18/1950 0:00:00")
Error: unexpected input in "gsub("\\d\\d?/\\d\\d?/(\\d\\d\\d\\d).*", \"
> gsub("\\d\\d?/\\d\\d?/(\\d\\d\\d\\d).*", "\\1", "4/18/1950 0:00:00")
[1] "1950"
> storm_data$year <- gsub("\\d\\d?/\\d\\d?/(\\d\\d\\d\\d).*", "\\1", storm_data$BGN_DATE)
> hist(storm_data$year)
Error in hist.default(storm_data$year) : 'x' must be numeric
> storm_data$year <- as.numeric(gsub("\\d\\d?/\\d\\d?/(\\d\\d\\d\\d).*", "\\1", storm_data$BGN_DATE))
> hist(storm_data$year)
> summary(year)
Error in summary(year) : object 'year' not found
> summary(stomr_data$year)
Error in summary(stomr_data$year) : object 'stomr_data' not found
> summary(storm_data$year)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1950    1995    2002    1999    2007    2011 
> abline(v = quantile(storm_data$year, c(0.25,0.5,0.75)))
> abline(v = quantile(storm_data$year, c(0.25,0.5,0.75)), color = red)
Error in int_abline(a = a, b = b, h = h, v = v, untf = untf, ...) : 
  object 'red' not found
> abline(v = quantile(storm_data$year, c(0.25,0.5,0.75)), color = "red")
Warning message:
In int_abline(a = a, b = b, h = h, v = v, untf = untf, ...) :
  "color" is not a graphical parameter
> abline(v = quantile(storm_data$year, c(0.25,0.5,0.75)), color = "r")
Warning messages:
1: "color" is not a graphical parameter 
2: "color" is not a graphical parameter 
3: In int_abline(a = a, b = b, h = h, v = v, untf = untf, ...) :
  "color" is not a graphical parameter
> ?abline
Warning messages:
1: "color" is not a graphical parameter 
2: "color" is not a graphical parameter 
3: "color" is not a graphical parameter 
4: "color" is not a graphical parameter 
> summary(storm_data$year)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1950    1995    2002    1999    2007    2011 
