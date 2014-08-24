############################## Objective of the code #######################################

## Following Code is an exercise as part of coursera assignment## 
## Objective of the code is two fold - one is to calculate the inverse of a square matrix.. 
## ...and along with also store the matrix and the calculated inverse value in cache...
##...so that if we need to get the inverse again then it...
##..can be retrievd from stored cache.


############################### Description of the functions used in code ###################

## Two functions have been created in this code below to achive the objective

## First Function ##

##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix())  {
        ## initializing matrix to start with null value
        m<-NULL
        
        ## store input matrix 
        setmatrix<-function(y){
                x<<-y
                
                ## re-initialize cache to null as new matrix input has been given
                
                m<<-NULL
        }
        
        ## get stored matrix from cache
        getmatrix<-function() {
                x
        }
        
        ## solve for inverse of the matrix and cache it
        setinverse<-function(solve) {
                m<<- solve
        }
        
        
        ## get the inverse from cached value
        getinverse<-function() {
                m
        }
        
        list(setmatrix=setmatrix, getmatrix=getmatrix, setinverse=setinverse,
             getinverse=getinverse)
}

## Second Function##

## cacheSolve: This function computes the inverse of the special "matrix" returned..
## ..by makeCacheMatrix above. If the inverse has already been calculated ....
##(and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.##

cacheSolve <- function(x=matrix(), ...) {
        m<-x$getinverse()
## getting inverse from cache
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
## if not in cache then calculating for new
        matrix<-x$getmatrix()
        m<-solve(matrix, ...)
        x$setinverse(m)
        m
}

