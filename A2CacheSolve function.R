## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {      
inv <- x$getInverse()
 if (!is.null(inv)) {
 message("getting cached data")
 return(inv)
  }
   mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
 inv
}
