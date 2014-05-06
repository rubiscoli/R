## makeCacheMatrix creates a special matrix object, and 
## return a list of matrix. 
## Then cachSolve computes its inverse matrix.
 
makeCacheMatrix <- function(x = matrix()) {
    # store the cached inverse matrix in "inv"
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinv<- function(inverse) inv_x <<-inverse
    getinv <- function() inv
    # return the new matrix as requested
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}
 
## cacheSolve computes the inverse matrix.
## If the inverse has already been calculated, it will be retrieved 
## from the cache, instead of being computed again.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    ## if already cached, return it
    if (!is.null(inv)) {
        message("getting cached inverse matrix")
        return(inv)
    ## if not cached, compute it
    } else {
        inv <- solve(x$get())
    ## cache the inverse matrix
        x$setinv(inv)
        return(inv)
    }
}