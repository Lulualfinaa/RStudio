lulu=read.delim("clipboard")
View(lulu)
t.test(lulu$volume, conf.level=0.5)
