# 07_tidyverse_intro.R ---------------------------------------------------
# 目标：入门 dplyr + ggplot2（需要先安装 tidyverse）
# install.packages("tidyverse")

library(tidyverse)

set.seed(10)
df <- tibble(
  id = 1:20,
  group = sample(c("ctrl", "treat"), 20, replace = TRUE),
  score = round(rnorm(20, 75, 12), 1)
)

# 1) 数据查看
glimpse(df)

# 2) 数据清洗与汇总
summary_tbl <- df %>%
  filter(!is.na(score)) %>%
  mutate(pass = score >= 60) %>%
  group_by(group) %>%
  summarise(
    n = n(),
    mean_score = mean(score),
    sd_score = sd(score),
    pass_rate = mean(pass)
  )

print(summary_tbl)

# 3) ggplot2 可视化：箱线图 + 散点
p <- ggplot(df, aes(x = group, y = score)) +
  geom_boxplot() +
  geom_jitter(width = 0.15, alpha = 0.7) +
  labs(title = "Score by group", x = "group", y = "score")

print(p)

# 保存
ggsave("ggplot_score_by_group.png", plot = p, width = 7, height = 5)
cat("\nSaved: ggplot_score_by_group.png\n")
