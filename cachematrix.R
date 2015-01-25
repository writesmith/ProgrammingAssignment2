# These functions cache the time-consuming operation of
# caluclating the inverse of a matrix.


# This function creates a special "matrix" object that
# can cache it's inverse.
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        #set will calculate the matrix
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        #get will return the existing matrix
        get <- function() x
        setinverse <- function(inverse) inverse <<- inverse
        getinverse <- function() inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function computes the inverse of the special
## matrix above. If the cache has already been caclulated
## and has not changed, then this function should retrieve
## the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        if(!is.null(inverse)){
                return(inverse)
        }
        #get the solved matrix
        data <- x$get()
        inverse <- solve(data, ...)
        #set using the object created by the other function
        x$setinverse(inverse)
        return(inverse)
}
