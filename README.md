# Coursera Programming Assiggnment - Caching the Inverse of a Matrix

Objective of the current code is two fold - one is to calculate the inverse of a square matrix and along with also store the matrix and the calculated inverse value in cache. so that if we need to get the inverse again then it can be retrieved from stored cache. In this way we can improve the efficiency of our codes by not repetitively calculate the inverse again and again of same matrix. Current code only deals with square matrix.

Here, two functions have been used to cache the matrix and its inverse together and retrieve it later.

1. First Function as - `makeCacheMatrix`: This function creates a special "matrix" object that can cache its inverse. There are four sub-functions as mentioned below created within this function such as 
 * setmatrix  - stroes matrix
 * getmatrix  - get matrix from cache
 * setinverse - calculate inverse
 * getinverse - get inverse from cache

2. Second Function as `cacheSolve`: This function computes the inverse of the special "matrix" returned by `makeCacheMatrix` above. If the inverse has already been calculated (and the matrix has not changed), then `cacheSolve` should retrieve the inverse from the cache.

**Guideline to use the code**

> Store the R code "cachematrix.R" in your directory and run the code. for testing you can use follwoing -  
1. run following for a sample run- 
 * sample <- makeCacheMatrix( matrix(c(10,20,50,70,90,110,200,100,300), nrow = 3, ncol = 3) )
 * cacheSolve(sample)
 * again run  - cacheSolve(sample)
