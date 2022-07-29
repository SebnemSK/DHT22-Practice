library(rclinicaltrials)

my_query <- "monkeypox AND canada"
n <- clinicaltrials_count(my_query)
trials <- clinicaltrials_download(my_query)
intv <- trials$interventions
