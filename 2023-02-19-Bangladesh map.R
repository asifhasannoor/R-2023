# Install bangladesh package
# install.packages("bangladesh")

# require library of bangladesh
library(bangladesh)

# get the variable of country, division, district, upazila and union
country <- get_map("country")
division <- get_map("division")
district <- get_map("district")
upazila <- get_map("upazila")
union <- get_map("union")

bd_plot("country")
bd_plot("division")
bd_plot("district")
bd_plot("upazila")
bd_plot("union")

# Population of Bangladesh according to BSB report 2011
View(bangladesh::pop_district_2011)


#install package
install.packages("tmap")

# require the library
library(tmap)


# To export the data in excel file install openxlsx
install.packages("openxlsx")

# require the library of openxlsx
library(openxlsx)

text_file_location <- "E:/asif/ASIF_FOLDER/PMD/ROUTINE_WORK/MISC ANALYSIS/2023-03-SALES_REGION_STRUCTURE/my_file.txt"

write.table(union, file = text_file_location, sep = "\t", row.names = FALSE)
