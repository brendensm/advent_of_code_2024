# Part one
data <- read.table("input/day1_input.txt")

sum(abs(sort(data$V1) - sort(data$V2)))

# Part two
score <- 0

for(i in 1:length(data$V1)){
  num_oc <- sum(data$V2 %in% data$V1[i])
  added_score <- num_oc * data$V1[i]
  score <- score + added_score
}

