# # Dump all code in one file
path <- "U:/Documents/__CODE_PROJECTS__/dtms/R/"
filenames <- dir(path)
filenames <- paste0(path,filenames)
nfiles <- length(filenames)
outfile <- ("combined/all.R")

for(i in 1:nfiles) {

  dump <- scan(file=filenames[i],what="char",blank.lines.skip=FALSE, sep="\n", quiet=TRUE)

  if(i==1) write(dump,file=outfile,append=FALSE) else  write(dump,file=outfile,append=TRUE)

}

# # Dump selected functions in one file, without comments
filenames <- c("dtms.R","dtms_format.R","dtms_clean.R","dtms_nonparametric.R",
               "dtms_aggregate.R","dtms_fit.R","dtms_transitions.R",
               "dtms_matrix.R","dtms_expectancy.R","dtms_helpers.R")
filenames <- paste0(path,filenames)
nfiles <- length(filenames)
outfile <- ("combined/selected.R")

for(i in 1:nfiles) {

  dump <- scan(file=filenames[i],what="char",blank.lines.skip=TRUE, sep="\n", quiet=TRUE)

  dump <- dump[!startsWith(dump,"#")]

  if(i==1) write(dump,file=outfile,append=FALSE) else  write(dump,file=outfile,append=TRUE)

}
