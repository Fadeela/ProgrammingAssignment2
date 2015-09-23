## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }                                                 #set the value of the matrix 
        get <- function() x                               #get the value of the matrix 
        setsolve <- function(matrix) m <<- matrix         #store the value of the matrix into the main function
        getsolve <-function()  m                          #return the value of the matrix from the main function
        list(set = set, get = get,                        #list the functions to store them at makeCacheMatrix
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)                                  ##verfiy m value previously stored at getsolve 
        }                                                  # and return its inverse
        data <- x$get()                                    #else calculate and return the matrix inverse 
        m <- as.matrix(solve(data,...))
        x$setsolve(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
