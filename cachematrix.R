## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## This function creates a special "matrix" object that can cache its inverse.

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
          print("getting cached data")
          return(m)
        }
        mydata <- x$get()
        m <- solve(mydata,...)
        x$setinverse(m)
        m
}

