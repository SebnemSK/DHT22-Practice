# Regular expressions

fruits <- c("berry", "banana", "apple", "orange", "mango", "avocado", "kiwi", "coco?")

# grepl(pattern = <regex>, x = <string>, ignore.case = FALSE)

grepl("[ae]", fruits)

grepl("[E]", fruits, ignore.case = T)

grepl("\\?", fruits)

# fruits that do not have b,a,n
grepl("[^ban]", fruits)
# fruits beginning with a
grepl("^[a]", fruits)

# All word letters
grepl("[a-zA-Z]", fruits)

#Let's identify valid email addresses
emails <- c("john.doe@uni.edu", "jane.doe@someplace.ca", "invalid.ca", 
            "_@notvalid", "notvalid@fake", "big.bird@sesame.tv", "notused@",
            "@notvalid.ca", "fake@fake.fakest0")

# Has an @ symbol
grep("@", emails, value = T)
# Has some characters before the @ symbol
grep(".+@", emails, value = T)
# Has an alphanumeric character before @
grep("[a-z0-9]+@", emails, value = T, ignore.case = T)
# Has valid characters after @
grep("[a-z0-9]+@\\w+", emails, value = T, ignore.case = T)
# Has a period in the domain and 2-4 letters after that
grep("[a-z0-9]+@\\w+\\.[a-z]{2,4}$", emails, value = T, ignore.case = T)













