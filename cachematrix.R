## Below are two functions that create an object that stores a matrix and cache's its inverse.
## functions do

## This first function sets and gets the matrix as well as it's inverse.

makeCacheMatrix <- function(x = matrix()) {
 A <- NULL
  set <- function(y) {
    x <<- y
    A <<- NULL
  }
  get <- function() x
  setA <- function(solve) A <<- solve 
  getA <- function() A
  list(set = set, get = get,
       setA = setA,
       getA = getA)
}


## THe Below function checked to see if the inverse has been calculated already. If so, it gets the inverse from the Cache function. If not, it calculated the inverse.

cacheSolve <- function(x, ...) {
        A <- x$getA()
  if(!is.null(A)) {
    message("getting cached data")
    return(A)
  }
  data <- x$get()
  A <- solve(data, ...)
  x$setA(A)
  A
}
