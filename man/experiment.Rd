% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiments.R
\name{experiment}
\alias{experiment}
\title{Do the specified analysis of the impact of the variables on the measure}
\usage{
experiment(person, variables, measures, analysis = c("plot", "correlation",
  "anova", "compare_groups", "regression"), time_var)
}
\arguments{
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

\item{analysis}{list of ways in which to analyze the relationship between 
each variable and each measure - options are "plot",
"correlation", "anova", "compare_groups", "regression"}

\item{time_var}{the time variable that variables and measures are 
observed in (time, date, or datetime)}
}
\value{
NULL - results of analysis chosen are printed
}
\description{
Performs the analysis specified on the variables (X) and
measures (Y).
}
\examples{
data(EX)
experiment(person = EX, variables = list("fitbit_daily" = c("sleepDuration"),
                                         "util" = c("day_of_week")),
                        measures = list("fitbit_daily" = 
                                          c("restingHeartRate")),
                        analysis = c("plot"), time_var = c("date"))

}
