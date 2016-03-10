## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This Function returns a list containg functions to set and get a Matrix and its Inverse
makeCacheMatrix <- function(x = matrix()){
    inv <- NULL
    set <- function(y){
        x <<- y
        inv <<- NULL
    }
    get <- function() x;
    setinverse <- function(matrixinverse) inv <<- matrixinverse
    getinverse <- function() inv
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function
## This Function is used to calculate the inverse of a matrix returned by calling get on above function
## If the inverse is already calculated previously, it is returned
cacheSolve <- function(x, ...){
    inv <- x$getinverse()
    if(!is.null(inv)){
        message("getting cached inverse matrix")
        return(inv)
    }
    mat <- x$get()
    inv <- solve(mat)
    x$setinverse(inv)
    inv
}
