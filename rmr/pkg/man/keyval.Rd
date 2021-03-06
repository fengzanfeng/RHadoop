\name{keyval}
\alias{keyval}
\alias{keys}
\alias{values}

\title{Create or extract Key-Value Pairs}
\description{Creates a key-value pair from its arguments or extracts keys or values from a list of pairs.}

\usage{
  keys(kvl)
  values(kvl)
  keyval(k, v, vectorized = FALSE)
}

\arguments{
\item{kvl}{list containing key/value pairs}
\item{k}{the desired key or keys}
\item{v}{the desired value or values}
\item{vectorized}{\code{k,v} are to be construed not as a single key-value pair but as a list of keys and list of values of equal length, 
to be matched positionally. Vectors and data frames are also accepted; for the latter each row then corresponds to a key when \code{vectorized} is \code{TRUE}}}

\details{The keyval function is used to create return values for the map and reduce functions passed as parameters to
\code{mapreduce}, which can also return NULL or a list of non vectorized (`vectorized` option set to `FALSE`) key-value pairs 
or a single vectorized key-value pair. 
The \code{vectorized} option is used for efficiency when many, small key-value pairs need to be returned. Lists of non vectorized
key-value pairs or a single vectorized key-value pair are also appropriate arguments for the \code{to.dfs} function and are returned by 
\code{from.dfs}. \code{keys} and \code{values} extract a list of keys or values resp. from a list of key value pairs or a
vectorized key-value pair.} 

\examples{  
  keyval(1,2)
  keys(replicate(5, keyval(1,2), simplify = FALSE))
  values(replicate(5, keyval(1,2), simplify = FALSE))
}
