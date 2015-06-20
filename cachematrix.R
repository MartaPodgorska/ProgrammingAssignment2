## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL ##remove old matrix
        set <- function(y) { ##change the matrix stored in the main function
                x <<- y ##substitute x with y
                m <<- NULL 
        }
        get <- function() x ##return matrix stored in the main function
        setmatrix <- function(matrix) m <<- matrix
        getmatrix <- function() m ##return set matrix
        list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting inverted matrix")
                return(m)
        }
        ##get the matrix stored with makeCacheMatrix
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}
