# 03_control_flow.R ------------------------------------------------------
# 目标：if / for / while / apply 家族

rm(list = ls())

# 1) if / else
score <- 85
if (score >= 90) {
  grade <- "A"
} else if (score >= 80) {
  grade <- "B"
} else {
  grade <- "C"
}
cat("score:", score, "grade:", grade, "\n")

# 2) for 循环：求和
s <- 0
for (i in 1:5) {
  s <- s + i
}
cat("sum 1..5 =", s, "\n")

# 3) while 循环：直到超过阈值
x <- 1
cnt <- 0
while (x < 100) {
  x <- x * 2
  cnt <- cnt + 1
}
cat("x:", x, "cnt:", cnt, "\n")

# 4) apply：对矩阵按行/列做函数
m <- matrix(1:12, nrow = 3, byrow = TRUE)
print(m)
cat("row sums:", apply(m, 1, sum), "\n")
cat("col means:", apply(m, 2, mean), "\n")

cat("\n03_control_flow.R done.\n")
