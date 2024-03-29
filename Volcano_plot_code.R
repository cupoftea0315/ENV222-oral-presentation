# dev.new()
setwd(".")
getwd()

df <- read.csv("volcano_plot_example_data.csv",
               header = TRUE, stringsAsFactors = FALSE)
head(df)
dim(df)
df$group <- ifelse(df$logFC>=3&df$P.Value<=0.01, "Up", 
                   ifelse(df$logFC<=-3&df$P.Value<=0.01, "Down", "Not sig"))
table(df$group)
df$pvalue_log10 <- (-log10(df$P.Value))
df_sig <- df[df$pvalue_log10>=10,]
head(df_sig)
dim(df_sig)

library(ggplot2)
library(ggrepel)
ggplot(df, aes(x=logFC, y=-log10(P.Value))) + geom_point(aes(color=group)) +
  scale_color_manual(values=c("dodgerblue", "gray", "firebrick")) +
  geom_vline(xintercept = 3, linetype = "dashed") +
  geom_vline(xintercept = -3, linetype = "dashed") +
  geom_hline(yintercept = 2, linetype = "dashed") +
  geom_label_repel(data=df_sig,aes(x=logFC, y=-log10(P.Value), label=gene_name)) +
  labs(title = "Oral Presentation demonstration", subtitle = "< ENV222 >", 
       y=expression(-log[10](p-value)), x="log(Fold Change)") + 
  theme_test()

