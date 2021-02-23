#5 uzduotis
library(ggplot2)
barplot(height = clean_donate$donate_rate,
        names = clean_donate$quarter_number)
barplot(height = donate$donate_rate,
        names = donate$quarter_number)