% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/traceback.R
\name{tb}
\alias{tb}
\alias{bt}
\title{A better \code{base::traceback()}}
\usage{
tb(frame = NULL, context = 5)

bt(frame = NULL, context = 5)
}
\arguments{
\item{frame}{If \code{NULL}, the stack trace is shown. If it is an integer
referring to a frame in the stack, the source code of the corresponding
call is shown.}

\item{context}{Number of source code lines to show before and after
the current line.}
}
\description{
Compared to \code{base::traceback()}, \code{tb}
\itemize{
\item shows the stack from top to bottom, the same way as \code{\link[utils:recover]{utils::recover()}},
\item shows references to source files in a clickable form (in terminals
that support this),
\item cuts long lines of code,
\item colors the output nicely (although this is a matter of taste),
\item can show the source code where the error happened, with syntax
highlighting, if the source code is available.
}
}
\details{
\code{bt} is an alias to \code{tb}.
}
\section{The custom error handler}{

\code{tracer} defines an error handler when loaded, via a call to
\code{options(error = tracer:::dumper)}. If you overwrite the error handler,
then \code{tb} does not work properly. You can reinstate the \code{tracer:::dumper}
error handler via an explicit call to \code{options()}.
}

