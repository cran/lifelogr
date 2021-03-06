% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiments.R
\name{correlation}
\alias{correlation}
\title{Correlation between each variable vs each measure}
\usage{
correlation(dataset = NA, person, variables, measures, time_var = NA)
}
\arguments{
\item{dataset}{dataset from create_dataset that contains all variables
and measures of interest}

\item{person}{an instantiated Person object}

\item{variables}{list of variables in person of interest, with structure 
list(source1 = c(var1, var2), source2 = c(var3, var4))
where source is a source of data as defined in a Person
object, and var1 and var2 are variables from source1, 
while var3 and var4 are variables from source2}

\item{measures}{list of measures in person of interest, with structure 
list(source1 = c(var1, var2), source2 = c(var3, var4))
where source is a source of data as defined in a Person
object, and var1 and var2 are variables from source1, 
while var3 and var4 are variables from source2}

\item{time_var}{the time variable that variables and measures are 
observed in (time, date, or datetime) - only needed if 
dataset is not passed in}
}
\value{
Pearson's correlation between each variable and each measure
}
\description{
Prints and returns Pearson's correlation between each variable
and each measure listed. Can pass in a 
dataset from create_dataset, or function calls create_dataset itself.
}
\section{Note}{

`correlation` uses "pairwise.complete.obs", which only computes the 
correlation between all complete pairs of observations.
}

\examples{
data(EX)

dataset <- create_dataset(person = EX, 
            all_variables = list("fitbit_daily" = c("sleepDuration", 
                                                    "steps")),
            time_var = c("date"))
                      
correlation_df <- correlation(dataset, person = EX, 
                            variables = list("fitbit_daily" = 
                                                 c("sleepDuration")),
                            measures = list("fitbit_daily" = c("steps")),
                           time_var = "date")
       
      
}
