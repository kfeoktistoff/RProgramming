## Matrix inversion is usually a costly computation. The following functions
## provide possibility of caching the inverse of a matrix rather than compute 
## it repeatedly.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inversed <- NULL
  
  set <-function(y) {
    x <<- y
    inversed <<- NULL
  }
  
  get <- function() x
  setInversed <- function(newInversed) inversed <<- newInversed
  getInversed <- function() inversed
  list(set = set, get = get, setInversed = setInversed, getInversed = getInversed)
}


## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already 
## been calculated (and the matrix has not changed), then the 
## cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inversed <- x$getInversed()
  
  if(!is.null(inversed)) {
    message("getting cached data")
    return(inversed)
  }
  
  data <- x$get()
  inversed <- solve(data, ...)
  x$setInversed(inversed)
  
  inversed
}