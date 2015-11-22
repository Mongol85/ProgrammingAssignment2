## makeCacheMatrix-makes a matrix object  

## x-is input matrix

makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                    x <<- y
                    m <<- NULL
            }
            get <- function() x
            getm<- function() {
    if(is.null(m)) m <<- solve(x)
    m
  }

  list(set = set, get = get, getm = getm)
}


## This function return computed the inverse of the special "matrix". 
##If the inverse has already been calculated it grabs from the cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    x$getm()
}
