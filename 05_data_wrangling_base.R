# 05_data_wrangling_base.R -----------------------------------------------
# 目标：用 base R 完成：筛选、排序、创建新列、汇总、合并

rm(list = ls())
set.seed(1)

df <- data.frame(
  id = 1:10,
  group = sample(c("ctrl", "treat"), 10, replace = TRUE),
  score = round(rnorm(10, mean = 80, sd = 10), 1)
)
print(df)

# 1) 筛选：score >= 80
df_high <- df[df$score >= 80, ]
cat("\nscore >= 80:\n")
print(df_high)

# 2) 排序：按 score 降序
df_sorted <- df[order(df$score, decreasing = TRUE), ]
cat("\nSorted by score desc:\n")
print(df_sorted)

# 3) 新列：是否及格（>= 60）
df$pass <- df$score >= 60
cat("\nAdd pass column:\n")
print(df)

# 4) 分组汇总：按 group 求均值
mean_by_group <- aggregate(score ~ group, data = df, FUN = mean)
cat("\nMean by group:\n")
print(mean_by_group)

# 5) merge：把汇总结果合并回原表
df2 <- merge(df, mean_by_group, by = "group", suffixes = c("", "_group_mean"))
cat("\nMerge back:\n")
print(df2)

cat("\n05_data_wrangling_base.R done.\n")
