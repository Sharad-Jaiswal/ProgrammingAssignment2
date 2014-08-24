### Introduction

Objective of the current code is two fold - one is to calculate the inverse of a square matrix and along with also store the matrix and the calculated inverse value in cache. so that if we need to get the inverse again then it can be retrieved from stored cache. In this way we can improve the efficiency of our codes by not repetitively calculate the inverse again and again of same matrix.

### Caching the Inverse of a Matrix (current code only deals with square matrix)

Two functions have been used to cache the matrix and its inverse together and retrieve it later.

First Function as below-
1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.

        There are four sub-functions as mentioned below created within this function as decribed below - 
        
        I.   setmatrix  - stroes matrix
        II.  getmatrix  - get matrix from cache
        III. setinverse - calculate inverse
        IV.  getinverse - get inverse from cache

Second Function as below - 

2.  `cacheSolve`: This function computes the inverse of the special "matrix" returned by `makeCacheMatrix` above. If the inverse has already been calculated (and the matrix has not changed), then `cacheSolve` should retrieve the inverse from the cache.

## Guideline to use the code

### Store the R code "cachematrix.R" in your directory and run the code
### A Sample case and output has been shown below - 
### run following in console
## creating a square matrix
sample <- makeCacheMatrix( matrix(c(10,20,50,70,90,110,200,100,300), nrow = 3, ncol = 3) )
## run for inverse 
cacheSolve(sample)
##            [,1]         [,2]         [,3]
[1,] -0.043243243 -0.002702703  0.029729730
[2,]  0.002702703  0.018918919 -0.008108108
[3,]  0.006216216 -0.006486486  0.001351351
## again run for the inverse and now the inverse should come be cache value##
cacheSolve(sample)
##getting cached data
             [,1]         [,2]         [,3]
[1,] -0.043243243 -0.002702703  0.029729730
[2,]  0.002702703  0.018918919 -0.008108108
[3,]  0.006216216 -0.006486486  0.001351351
##
