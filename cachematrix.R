# These functions cache the time-consuming operation of
# caluclating the inverse of a matrix.

# This function creates a special "matrix" object that
# can cache it's inverse.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                inverse.x <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inverse.x <<- inverse
        getinverse <- function() m
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
}
