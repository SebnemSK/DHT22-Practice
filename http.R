library(httr)
response_val <- GET(url = "https://httpbin.org/get")

# Copied from notes
library(httr)
library(jsonlite)
str_row <- 1
end_row <- 20
base <- "https://ClinicalTrials.gov/api/"
endpoint <- "query/study_fields?"
#query <- "expr=heart+attack&fields=NCTId,Condition&fmt=JSON"
query <- "expr=monkeypox&fields=NCTId,Condition&fmt=JSON"
row_cnt <- paste0("&min_rnk=",str_row,"&max_rnk=",end_row)
whole_thing <- paste0(base,endpoint,query,row_cnt)
# Send the query to the API
trial <- GET(paste0(base,endpoint,query))
# Save the response from the API call in text format
trial_text <- content(trial, "text")
# Parse the text JSON output from the API call
trial_json <- fromJSON(trial_text, flatten = T)
