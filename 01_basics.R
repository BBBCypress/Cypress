# 01_basics.R ------------------------------------------------------------
# 目标：熟悉 R 的变量、向量、基本运算、常用函数与帮助系统

rm(list = ls())  # 清空环境（新手常用）
set.seed(123)    # 固定随机数，方便复现结果

# 1) 变量与基本类型
x <- 10
y <- 3
name <- "Baijie"

cat("x:", x, "y:", y, "\n")
cat("name:", name, "\n")

# 2) 基本运算
cat("x + y =", x + y, "\n")
cat("x / y =", x / y, "\n")
cat("x ^ y =", x ^ y, "\n")   # 幂
cat("x %% y =", x %% y, "\n") # 取余

# 3) 向量（R 最核心的数据结构之一）
v <- c(1, 2, 3, 4, 5)
cat("v:", v, "\n")
cat("length(v):", length(v), "\n")
cat("mean(v):", mean(v), "\n")

# 4) 向量化运算（不写循环也能批量算）
cat("v * 2:", v * 2, "\n")
cat("v + 100:", v + 100, "\n")

# 5) 逻辑判断与筛选
is_big <- v > 3
cat("v > 3:", is_big, "\n")
cat("v[v > 3]:", v[v > 3], "\n")

# 6) 缺失值 NA
v2 <- c(1, NA, 3, NA, 5)
cat("mean(v2) (含NA):", mean(v2), "\n")
cat("mean(v2, na.rm=TRUE):", mean(v2, na.rm = TRUE), "\n")

# 7) 常用帮助
# ?mean
# help("mean")
# example(mean)

cat("\n01_basics.R done.\n")
