## These two functions together cache the inverse of a matrix.
## functions do

## This function creates a "matrix" object that is able to cache its inverse

makeCacheMatrix <- function(x = matrix()) {
k<-NULL
set <- function(y){
	x << -y
	k <<- NULL
}
get <- function()x
setInverse <- function(inverse) k <<- inverse
getInverse <- function() j
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}


## This function calculates the inverse of the "matrix" which is returned by the function "makeCacheMatrix". 
## In the case where the inverse has already been calculated, this function "cacheSolve" retrieves the inverse
## from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
k <- x$getInverse()
if(!is.null(k)){
	message("retrieving cached data")
	return(k)
}
mamat <- x$get()
k <- solve(mat,...)
x$setInverse(k)
k
}
