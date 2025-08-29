sum((1:15) %% 3 == 0)

x <- c (2,4,10,5,3)
max_index <- 1
for (i in 2 : length(x)){
  if (x[i] > x[max_index]){
    max_index <- i
  }
}
max_index

w <- c (2,4,10,5,3)
which.max(w)
