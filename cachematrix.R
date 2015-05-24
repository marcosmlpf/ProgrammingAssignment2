## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    # Get and set for matrix itself..
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    
    get <- function() {
        x
    }
    # Get and set for inverse values of matrix..    
    setInverse <- function(inverse) {
        i <<- inverse
    }
    
    getInverse <- function() {
        i
    }
    # Expose functions.
    list(set = set, get = get, setinverse = setInverse, getinverse = getInverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    # Return cached inverse..
    if(!is.null(i)) {
        message("getting chached data")
        return(i)
    }
    # Calculate inverse matrix..
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
