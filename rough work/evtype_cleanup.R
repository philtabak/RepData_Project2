#get unique values of EVTYPE:

u <- as.vector(str_trim(toupper(unique(storm_data$EVTYPE))))



#remove all summary rows, i.e., rows containing the word "SUMMARY"
u <- u[grep(".*(SUMMARY).*$", u, invert = TRUE)]

#replace all instances of TSTM with THUNDERSTORM
u <- gsub("TSTM", "THUNDERSTORM", u, ignore.case = TRUE)
u <- gsub(" DAMAGE", "", u, ignore.case = TRUE)
u <- gsub("\\(.*\\)", "", u, ignore.case = TRUE)
u <- str_trim(u)
u <- gsub("S$","", u, ignore.case = TRUE)
u <- str_trim(u)


#load official values:
evtype_file = "official_evtype.csv"

#match against unique values against official values
#put the offical next to the matched values  and save to filefor visual inspection

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA)
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/default.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA, method = "osa")
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/osa.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA, method = "lv")
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/lv.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA, method = "dl")
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/dl.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA, method = "hamming")
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/hamming.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA, method = "lcs")
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/lcs.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA, method = "qgram")
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/qgram.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA, method = "cosine")
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/cosine.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA, method = "jaccard")
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/jaccard.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA, method = "jw")
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/jw.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)

m <- amatch(u, evtypes$EVTYPE_offical, nomatch = NA, method = "soundex")
r <- data.frame(u, evtypes$EVTYPE_offical[m])
write.table(r, file = "rough work/a_match/soundex.txt", sep = "\t\t\t", row.names = FALSE, col.names = FALSE)
