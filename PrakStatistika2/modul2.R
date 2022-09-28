library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'p2statistika', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from data_csv;"
df <- dbGetQuery(con, myQuery)

install.packages("dplyr")
library(dplyr)
df<-filter(df,gender=="P")
print(df)

