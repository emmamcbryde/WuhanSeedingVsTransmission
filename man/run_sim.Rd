% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_sim.R
\name{run_sim}
\alias{run_sim}
\title{Negative binomial branching process model}
\usage{
run_sim(
  n,
  n_length,
  mean_si,
  sd_si,
  serial_fn = NULL,
  R0,
  k = 0.16,
  tf = 37,
  kept_times = NULL,
  max_potential_cases,
  delay_sample
)
}
\arguments{
\item{n}{Numeric, number of initial cases}

\item{n_length}{Numeric, the number of days in the initial seeding event}

\item{mean_si}{Numeric, the mean of the serial interval}

\item{sd_si}{Numeric, the sd of the serial interval}

\item{serial_fn}{Function from which to sample the serial interval must
accepted a number of samples argument followed by a mean and standard deviation. If
missing defaults to a normal distribution.}

\item{R0}{Numeric, the estimated reproduction number}

\item{k}{Numeric, the dispersion of the negative binomial branching process}

\item{tf}{Numeric, the end time of the branching process}

\item{kept_times}{Numeric, a vector of timepoints to keep information on. Defaults to all
time points}

\item{max_potential_cases}{Numeric, the maximum number of cases}

\item{delay_sample}{A function to sample from reporting delays}
}
\value{
A dataframe containing the simulation time and outbreak size
}
\description{
Negative binomial branching process model
}
\examples{

## Example

run_sim(n = 1, n_length = 7, mean_si = 5, sd_si = 2, R0 = 2, 
        k=0.16, tf=37, max_potential_cases= 100, 
        delay_sample = function(x) {rnorm(x, 6, 1)})
        
## Code
run_sim
}
\author{
Sebastian Funk, Sam Abbott, James Munday
}
