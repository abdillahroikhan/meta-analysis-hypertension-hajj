packages <- c("meta", "metafor", "tidyverse")
for (p in packages) {
  if (!require(p, character.only = TRUE)) install.packages(p)
  library(p, character.only = TRUE)
}

data_hajj <- read.csv("../data/hajj_hypertension_data.csv")

meta_res <- metabin(
  event.e = event_exp,
  n.e     = total_exp,
  event.c = event_ctrl,
  n.c     = total_ctrl,
  studlab = paste0(study, " (", year, ")"),
  data    = data_hajj,
  sm      = "OR",
  method  = "MH",
  method.tau = "PM",
  subgroup = risk_factor,
  test.subgroup = TRUE,
  comb.fixed = FALSE,
  comb.random = TRUE
)

summary(meta_res)

png("../figures/forest_plot_reproduced.png", width = 2400, height = 2000, res = 300)
forest(
  meta_res,
  sortvar = year,
  comb.fixed = FALSE,
  comb.random = TRUE,
  label.left = "Favours Control",
  label.right = "Favours Exposure",
  col.diamond = "#1A365D",
  col.diamond.lines = "#1A365D",
  col.square = "#2B6CB0",
  layout = "RevMan5",
  print.tau2 = TRUE,
  print.I2 = TRUE,
  print.pval.Q = TRUE,
  smlab = "Odds Ratio\n(95% CI)"
)
dev.off()