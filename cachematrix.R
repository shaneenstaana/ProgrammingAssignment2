## A requirement to fulfill Coursera R Programming course
## shaneenstaana
## The 'x' is input as matrix
## The "tr" is set as null

makeCacheMatrix <- function(x = matrix(),...) {
  tr <- NULL
  set <- function(y){
    x <<- y
    tr <<- NULL
  }
  get <- function() {x}
  settranslate <- function(translate) {tr <<- translate}
  gettranslate <- function() {tr}
  list(set = set, get = get, settranslate = settranslate, gettranslate = gettranslate)
}

##translates the matrix
cachetranslate <- function(x, ...){
  tr <- x$gettranslate()
  if(!is.null(tr)) {
    message ("acquiring cache data")
    return(tr)
  }
  inf <-x$get()
  tr <- translate(inf, ...)
  x$settranslate(tr)
  tr
}
