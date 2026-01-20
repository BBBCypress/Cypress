# 04_functions.R ---------------------------------------------------------
# 目标：写函数、默认参数、返回值、简单错误处理

rm(list = ls())

# 1) 最基本的函数
add_two <- function(a, b) {
  a + b
}
cat("add_two(2, 3) =", add_two(2, 3), "\n")

# 2) 默认参数
power <- function(x, p = 2) {
  x ^ p
}
cat("power(3) =", power(3), "\n")
cat("power(3, 3) =", power(3, 3), "\n")

# 3) 返回多个结果：用 list
summary_stats <- function(x) {
  x <- x[!is.na(x)]
  list(
    n = length(x),
    mean = mean(x),
    sd = sd(x),
    min = min(x),
    max = max(x)
  )
}

v <- c(1, 2, 3, NA, 5, 10)
res <- summary_stats(v)
print(res)

# 4) 简单错误处理：检查输入
safe_mean <- function(x) {
  if (!is.numeric(x)) stop("x must be numeric!")
  mean(x, na.rm = TRUE)
}

cat("safe_mean(v) =", safe_mean(v), "\n")
# safe_mean(c("a", "b"))

cat("\n04_functions.R done.\n")
