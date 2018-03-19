# get started 
library(jiebaRD)
library(jiebaR)
library(wordcloud2)
library(plyr)
library(showtext)
setwd("D:/")

word <- scan('fuben1.txt',sep='\n',what='',encoding="UTF-8")
word[1:10]


seg <- qseg[word]
seg <- seg[nchar(seg)>1]
seg <- seg[!grepl('[0-9]+'," ",names(seg))]


tableWord <- count(seg)

write.csv(tableWord, file="D:/a.csv")
wordcloud2(data=tableWord, backgroundColor = 'white',color='black',size=3)
