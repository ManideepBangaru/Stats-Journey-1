rm(list =ls(all=T))

# generate 40 random numbers between 1 and 800
sample <- runif(n = 40,min = 1,max = 800)

# generate 40 random numbers between 1 and 800
sampleInt = floor(runif(n = 40,min = 1,max = 800))

# pull a sample of elements from a column
df <- mtcars

# Without replacement
sampleHp <- sample(df$hp,3)

# With replacement
sampleHp <- sample(df$hp,3,replace=T)


