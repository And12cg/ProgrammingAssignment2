## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
		}
	get <- function(){x}
	setInverse <- function(inverse) {inv <- inverse}
	getInverse <- function() {inv}
	list(set = set, get = get, 
		setInverse = setInverse, 
		getInverse = getInverse)
}

## Write a short comment describing this funct

cacheSolve <- function(x, ...) {
inv <- x$getInverse()
	 if(!is.null(inv)){
		message("getting Cached data")
		return(inv)
	 }
	z <- x$get()
	inv <- solve(z, ...)
	x$setInverse(inv)
	inv
}
