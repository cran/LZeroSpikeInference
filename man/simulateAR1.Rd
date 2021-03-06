% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate.R
\name{simulateAR1}
\alias{simulateAR1}
\title{Simulate fluorescence trace based on simple AR(1) generative model}
\usage{
simulateAR1(n, gam, poisMean, sd, seed)
}
\arguments{
\item{n}{number of timesteps}

\item{gam}{AR(1) decay rate}

\item{poisMean}{mean for Poisson distributed spikes}

\item{sd}{standard deviation}

\item{seed}{random seed}
}
\value{
spikes, fluorescence, and calcium concentration
}
\description{
Simulate fluorescence trace based on simple AR(1) generative model
}
\details{
Simulate fluorescence trace based on simple AR(1) generative model

y_t = c_t + eps, eps ~ N(0, sd)

c_t = gam * c_{t-1} + s_t

s_t ~ Pois(poisMean)
}
\examples{
sim <- simulateAR1(n = 500, gam = 0.998, poisMean = 0.009, sd = 0.05, seed = 1)
plot(sim)
}
\seealso{
\strong{Estimate spikes:}
\code{\link{estimateSpikes}},
\code{\link{print.estimatedSpikes}},
\code{\link{plot.estimatedSpikes}}.

\strong{Cross validation:}
\code{\link{cv.estimateSpikes}},
\code{\link{print.cvSpike}},
\code{\link{plot.cvSpike}}.

\strong{Simulation:}
\code{\link{simulateAR1}},
\code{\link{plot.simdata}}.
}
