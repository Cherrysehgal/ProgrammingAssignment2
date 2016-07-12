## Put comments here that give an overall description of what your
## functions do

##The below function will  create inverse of a matrix and cache the result.
##Later  if the inverse is required of same matrix, then cacheSolve will 
##return the result from cache

## Write a short comment describing this function
## creates inverse of a matrix using solve function and cache the result

makeCacheMatrix <- function(x = matrix()) {
ma<-NULL
set<-function(y){
  x<<-y
  ma<<-NULL
}
get<-function()x
setinverse<-function(solve) ma<<-solve
getinverse<-function() ma
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## to get the inverse of same matrix, it will look in cache and the result will
## be retrieved

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ma<-x$getinverse()
  if(!is.null(ma))
  {
    message("The inverse is already caluclated. Retrieving cached data")
    return(ma)
  }
  data<-x$get()
  ma<-solve(data,...)
  x$setinverse(ma)
  ma
}
