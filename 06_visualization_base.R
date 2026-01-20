# 06_visualization_base.R -----------------------------------------------
# 目标：会画散点图、直方图、箱线图，并保存图片

rm(list = ls())
set.seed(42)

df <- data.frame(
  x = rnorm(100),
  y = rnorm(100) + 0.5 * rnorm(100),
  group = sample(c("A", "B"), 100, replace = TRUE)
)

# 1) 散点图
plot(df$x, df$y, main = "Scatter plot", xlab = "x", ylab = "y")

# 2) 直方图
hist(df$x, main = "Histogram of x", xlab = "x")

# 3) 箱线图
boxplot(y ~ group, data = df, main = "Boxplot of y by group")

# 4) 保存图像到文件（PNG）
png("plot_scatter.png", width = 800, height = 600)
plot(df$x, df$y, main = "Scatter plot (saved)", xlab = "x", ylab = "y")
dev.off()

cat("\nSaved: plot_scatter.png\n")
cat("\n06_visualization_base.R done.\n")
