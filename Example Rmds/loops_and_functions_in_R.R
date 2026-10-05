
calc_difftime <- function(data, camera_id) {
  
  
  
}


num_vec <- c(1,4,6,2,4)

data(iris)


new_iris <- tibble()

for(i in unique(iris$Species)) {
  
  iris_species <- iris %>% filter(Species == i)
  
  petal_diffs <- tibble(Petal_diff = NA)
  
  for(j in 1:nrow(iris_species)) {
    
    if(j == 1) petal_diffs[j, ]$Petal_diff <- NA
    
    if(j > 1) petal_diffs[j, ]$Petal_diff <- iris_species[j ,]$Petal.Length - iris_species[j-1 ,]$Petal.Length
    
  }
  
  new_iris <- new_iris %>% bind_rows(iris_mean)
  
}
