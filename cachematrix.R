## la función "makeCacheMatrix" permite crea un objeto(matriz)
##que puede almacenar su inversa en caché 


##  por medio de makeCacheMatrix se obtendrá el valor agredado al cache

makeCacheMatrix <- function(x = matrix()) {
## esta función  permite el almacenamiento en cache de la matriz por medio de:
cache = NULL

## y también limpiar el cache cuando se asigne un nuevo valor a la matriz usando ,
setMatrix <-function(newValue){
x<<-newValue
cache = NULL
}
## por medio de 

getMatrix<-function(){
x
}
##devuelve la matriz almacenada.

cacheInverse <- function(solve) { 
                 cache <<- solve 
         } 
 
## almacena en el cache el argumento dado


getInverse <- function() { 
                 cache 
         } 
 ##Obtiene el valor que fue almacenado en cache          
      
         list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse) 
 
}
## se obtiene la lista de los argumentos   
##########

## Esta función calcula la inversa de la "matriz" especialque fue  echa  por makeCacheMatrix anteriormente. 
##te permite  recuperar la inversa; cuando  la inversa ya ha sido calculada y cuando la  matriz no ha sido modificada


cacheSolve <- function(x, ...) {

 ##obteniendo el valor almacenado en cache

         inverse <- y$getInverse() 

##para devolver el valor(si este existe)

         if(!is.null(inverse)) { 
                 message("getting cached data") 
                 return(inverse) 
         } 
        
##obteniendo la matriz, calclando la inversa de la matriz y almacenarlo en cache.

         data <- y$getMatrix() 
         inverse <- solve(data) 
         y$cacheInverse(inverse) 
          
         ## Return a matrix that is the inverse of 'x'
##para devolver la inversa
         inverse 
 } 
        
  

