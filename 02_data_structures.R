# 02_data_structures.R ---------------------------------------------------
# 目标：理解 vector / list / matrix / data.frame / factor

rm(list = ls())

# 1) list：可以装不同类型
lst <- list(
  id = 1:3,
  name = c("A", "B", "C"),
  score = c(90.5, 88, 92)
)
str(lst)
cat("lst$name:", lst$name, "\n")

# 2) matrix：矩阵
m <- matrix(1:12, nrow = 3, byrow = TRUE)
print(m)
cat("m[2,3] =", m[2, 3], "\n")

# 3) data.frame：表格（最常用）
df <- data.frame(
  id = 1:5,
  group = c("ctrl", "ctrl", "treat", "treat", "treat"),
  value = c(10.2, 9.8, 11.5, 12.0, 11.8)
)
print(df)
str(df)

# 取列
cat("df$value:", df$value, "\n")
# 取行
print(df[df$group == "treat", ])

# 4) factor：分类变量（统计建模里重要）
df$group_f <- factor(df$group)
str(df$group_f)
cat("levels:", levels(df$group_f), "\n")

cat("\n02_data_structures.R done.\n")
