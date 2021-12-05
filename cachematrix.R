## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) { #sets the matrix to the cached variable
    x <<- y
    m <<- NULL
  }
  get <- function() { #returns the matrix 
    x
  }
  setinverse <- function(inverse) { #sets the invered matrix to the cache variable
    m <<- inverse
  }
  getinverse <- function() { #returns the inversed matrix variable
    m
  }
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse() 
    if(!is.null(m)) { #if the cached variable exists return the cache of invere matrix
      message("getting cached data")
      return(m)
    } else { #if not cached then create the inverse of the matrix by solve, save it to to cache and return the inverse of the matrix
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
    }
}
