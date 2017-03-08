## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##creates a matrix and restores its inverse in cache

makeCacheMatrix <- function(x = matrix()) {

    
    m <- NULL
    set <- function(y=matrix()) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
  
## Write a short comment describing this function

##calls the previous fuction.  takes the inverse of the matrix if not calculated before.  if calculated, reads it from cache

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}





