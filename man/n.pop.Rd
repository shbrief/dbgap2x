% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/n.pop.R
\name{n.pop}
\alias{n.pop}
\title{Gets the study participants' number}
\usage{
n.pop(phs, consentgroups = TRUE, gender = TRUE)
}
\arguments{
\item{phs}{dbGaP study ID (phs00xxxx, or 00xxxx, or xxx)}

\item{consentgroup}{if false, will return only the total number of participants}
}
\value{
a data.frame with 2 columns : name of the consent group and n total. Possibility to add the breakdown by gender.
}
\description{
This function extracts information from data.dict.xml files from the dbGaP ftp server to get the population characteristics. Works only for parents studies.
}
\author{
Gregoire Versmee, Laura Versmee, Mikael Dusenne, Niloofar Jalali
}
