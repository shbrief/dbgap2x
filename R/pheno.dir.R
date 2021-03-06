#' @import RCurl
#'
#' @author Gregoire Versmee, Laura Versmee, Mikael Dusenne, Niloofar Jalali
#' @export


pheno.dir <- function(phs){
    
    phs <- phs.version(phs)
    url <- paste0("ftp://anonymous:anonymous@ftp.ncbi.nlm.nih.gov/dbgap/studies/", unlist(strsplit(phs, "\\."))[1], "/", phs, "/")

    cache.call(
      match.call()[[1]],
      url, {
          filenames <- RCurl::getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE, crlf = TRUE)
          filenames <- strsplit(filenames, "\r*\n")[[1]]
          
          phenodir <- paste0(url, filenames[grep("pheno", filenames)], "/")
          phenodir
    })
}
