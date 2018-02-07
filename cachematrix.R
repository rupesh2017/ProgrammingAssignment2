## <<- operator to change value of another environment
## function has been defined inside another function to get caching feature (lexical scoping)
## solve() function work only on singular function i.e whose determinant is zero


## makeCacheMatrix function is used to calculated and store the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
m<-NULL                    #store cache mean

set<-function(y){
x<<-y                      
m<-NULL
}
get<-function()x
setinverse<-function(solve) m<<-solve
getinverse<-function() m
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## cachesolve is to check if inverse of matrix have been calculated for same input
## if yes return the cached value else compute the inverse using makeCacheMatrix function

cacheSolve <- function(x, ...) {
if(!is.null(m))
{
message("getting cached data")
return(m)         # if match found print and exit function
}
data<-x$get()
m<-solve(data,...)
x$setinverse(m)
m


}
