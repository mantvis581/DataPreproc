## Užduotis
5. Normalizuokite sutvarkyto failo kintamąjį `donate_rate` ir nubrėžkite jo stačiakampę diagramą, palyginkite su originalaus kintamojo diagrama.

Pirmiausia iš praeitos užduoties turime transformuoti duomenų failą `donate.sas7bdat` į tvarkingą duomenų failą ir sukurti
naują kintamąjį `donate_rate`.
```
donate = pivot_longer(donate,
             names_to = "quarter_number",
             values_to = "donate_rate",
             cols = c(Qtr1:Qtr4))
```
Tuomet normalizuojame kintamąjį `donate_rate`
```
clean_donate = donate[complete.cases(donate),]
```
Ir nubraižome diagramas:
```
library(ggplot2)
barplot(height = clean_donate$donate_rate,
        names = clean_donate$quarter_number)
barplot(height = donate$donate_rate,
        names = donate$quarter_number)
```

