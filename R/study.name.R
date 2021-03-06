#' @title Gets you the full name of the study on dbGaP
#'
#' @param phs dbGaP study ID (phs00xxxx, or 00xxxx, or xxx)
#'
#' @return Returns the full name of the study
#'
#' @author Gregoire Versmee, Laura Versmee, Mikael Dusenne, Niloofar Jalali

#' @export

study.name <- function(phs)  {

    phs <- phs.version(phs)
    return(cache.call(
        match.call()[[1]],
        phs, {
            
            content <- RCurl::getURL(paste0("https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=", phs))
            
            start <- as.numeric(regexpr("<span id=\"study-name\" name=\"study-name\">\n", content)) + nchar("<span id=\"study-name\" name=\"study-name\">\n")
            stop <- as.numeric(regexpr("\n</span>", content)) - 1
            study_name <-substr(content, start, stop)
            
            study_name
        }
    ))
}

