## x is a square invertible matrix
## This function return a list of functions
##1. Set the matrix
##2. Get the matrix
##3. Set the inverse
##1. get the inverse
makeMatrix<-function(x=matrix()){
  inv=NULL
  set=function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setinv <-function(inverse) inv<<-inverse
  getinv <-function()inv
  list(set=set,get=get, setinv=setinv,getinv=getinv)
}


## CacheSolve takes the output of MakeMatrix and returns
##the inverse of the original matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cacheMatrix<-function(x,...){
  inv<-x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat.data<-x$get()
  inv<-inverse(mat.data,...)
  x$setinv(inv)
  inv
}