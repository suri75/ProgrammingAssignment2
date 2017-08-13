
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## Initialize
        inv <- NULL
        
        ## Matrix set method
        set <- function(m){
                x <<- m
                inv << - NULL
        }
        
        ## Matric get method 
        get <- function() {
        x
        }
        ## Method - set Inverse of a matrix
        setInverse <- function(inverse){
          inv <<- inverse
        }
        
        ## Method - get Inverse of a matrix
        getInverse <- function() {
        ## Return inverse
                inv
        }
        
        ##Return list of methods
        list(set = set, get - get,
             setInverse = setInverse,
             getInverse = getInverse)
        
             
}


## Write a short comment describing this function
## Compute Inverse of special matrix returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        
        ## Return Inverse if it is already set
        if( !is.null(m) ) {
            message("getting cached data")
            return(m)
         }
        ## Get the matrix
        data <- x$get()
        ## Calculate Inverse
        m <- solve(data) %*% data
        
        ## Set the Inverse
        x$setInverse(m)
        ## Return matrix
        m
     
        
}
