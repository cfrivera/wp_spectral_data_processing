library(FieldSpectra)
library(XML)
# list of folders

# change to your computer directory that goes to this same folder.
# setwd("C://Users//Box/EcoenggLudwigia/Data/ASD/corrected_names/summer_2021/")
setwd("/Users/charles/Library/CloudStorage/Box-Box/EcoenggLudwigia/Data/ASD/corrected_names/summer_2021/SHET1i_01/")


# get a list of all the folders in summer_2021.
folders = list.files()
# open settings files so it can be read by read.asd. The same file can be used on all spectra.
settings.file = FieldSpectra::settings("/Users/charles/Downloads/settings_(1).xml")
# "/Users/charles/Library/CloudStorage/Box-Box/EcoenggLudwigia/Data/ASD/corrected_names/settings.xml"


file.dir = "/Users/charles/Library/CloudStorage/Box-Box/EcoenggLudwigia/Data/ASD/corrected_names/summer_2021/SHET1i_01/"
#out.dir = "/Users/charles/Desktop/wp_asd_spectra/wp_summer_2021/"

# for loop that will use read.asd on all spectra files within each folder in summer_2021

# for (i in 1:length(folders)){
#   working = print(paste0("working on: ", i))
# 
#   file.dir = paste0(getwd(), "/", folders[i])
#   out.dir = file.dir
# 
#   read.asd(file.dir = file.dir, out.dir = out.dir, settings.file = settings.file)
# }


for (i in 1:length(folders)){
  working = print(paste0("working on: ", i))
  
  file.dir = paste0(getwd(), "/")
  out.dir = file.dir
  
  read.asd(file.dir = file.dir, out.dir = out.dir, settings.file = settings.file, image = T)
}



# read.asd(file.dir = file.dir, out.dir = out.dir, settings.file = settings.file,
#          image = T,start.wave = 350, end.wave = 2500, step.size = 1,
#          output.file.ext = ".csv")

# average.spec(file.dir = file.dir, out.dir = out.dir, settings.file = settings.file, spec.type = "Reflectance",
#              bias.threshold = 0.1, suffix.length = 6,image = TRUE)


# When finished, replace "summer_2021" with "fall_2021" and "spring_2022" to get all data processed.

## when done, you will need to make plots for all spectra (wavelength (x) vs. reflectance(y)) so you 
## can find which files are good vs. bad. DO THIS BEFORE CONCATINATING THE DATA INTO ONE FILE!!!!!