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


# Let's extract postal codes from addresses
adresses <- c("12 main st. a7r 3b2 someplace", "24 side st. unit 5 k2y3n4 otherplace", 
              "1234greeen street seasidetown", "some ave3k3n56peaks")

grep("\\b[A-Z]\\d[A-Z]\\s?\\d[a-z]\\d", adresses, value = T, ignore.case = T)
# Get the starting locations of the postal codes
regexpr("\\b[A-Z]\\d[A-Z]\\s?\\d[a-z]\\d", adresses,  ignore.case = T)
# results
# [1] 13 20 -1 -1
# attr(,"match.length")
# [1]  7  6 -1 -1
# attr(,"index.type")
# [1] "chars"
# attr(,"useBytes")
# [1] TRUE

#First postal code
substr(adresses[1], 13, 13+7)
# Second postal
substr(adresses[2], 20, 20+6)

#First postal code
trimws(substr(adresses[1], 13, 13+7))
# Second postal
trimws(substr(adresses[2], 20, 20+6))




