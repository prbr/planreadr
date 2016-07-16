#reading plnx files in R

#devtools::install_github("hadley/xml2")


library(xml2)
library(XML)

setwd("C:/Users/pbrandicourt/Documents/PRA Exports")
schedule <- readLines("Detailed Fjord Operation Schedule.plnx")[2]
parsed_sch <- read_xml(schedule)

x = parsed_sch

#Get to the plan
foo = xml_children(xml_children(x)[10])[2]

# Get Specific fiels
ids = xml_text(xml_find_all(foo,'//ID'))
durations = xml_text(xml_find_all(foo,'//OriginalDuration'))

####Take a look at the structure
# xml_structure(foo)
