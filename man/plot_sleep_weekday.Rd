% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/viz_sleep.R
\name{plot_sleep_weekday}
\alias{plot_sleep_weekday}
\title{A function to plot sleep by day of week.}
\usage{
plot_sleep_weekday(person)
}
\arguments{
\item{person}{An instance of the Person class}
}
\value{
NULL, but plots print to screen
}
\description{
Returns a bar graph plotting sleep by day of week (Sunday, 
    Monday, ...).
}
\examples{
data(EX)
plot_sleep_weekday(person = EX)

}
