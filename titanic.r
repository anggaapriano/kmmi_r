dfTitanic = data.frame(Titanic)
dfTitanic
vecUmur = c(18,19,20)
vecNama = c("Salwa","Angga","Ali")
dfVector = data.frame(vecNama,vecUmur)

data_titanic = data.table(dfTitanic)
head(data_titanic)
total_passanger = data_titanic[, sum(Freq)]
total_passanger

freq_survive = data_titanic[, list(n=sum(Freq)), by="Survived"]
freq_survive

freq_survive[, percent := n/sum(n)]
freq_survive