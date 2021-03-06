% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datatables.dict.R
\name{datatables.dict}
\alias{datatables.dict}
\title{Creates study's tables dictionary}
\usage{
datatables.dict(phs)
}
\arguments{
\item{phs}{dbGaP study ID (phs00xxxx, or 00xxxx, or xxx)}
}
\value{
a data.frame with 3 columns : table id (pht), table name (dt_study_name) and description (dt_label)
}
\description{
This function extracts informations from data.dict.xml files from the dbGaP ftp server to create a table dictionary.
}
\author{
Gregoire Versmee, Laura Versmee, Mikael Dusenne, Niloofar Jalali
}
