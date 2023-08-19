# Water Primrose Project

> **Charles F. Rivera**, Bailey Morrison PhD, Erin L. Hestir PhD, School of Engineering, University of California, Merced

# Overview

Water primroses are one of the most invasive aquatic plants found throughout the world, and their presence brings about both environmental and economic consequences. To investigate the invasion strategies of this invasive plant, remote sensing plant spectroscopy can be employed.

The purpose of this code is to preprocess the water primrose spectral data collected between the summer of 2021 and spring of 2022 from the Sacramento-San Joaquin Delta, CA. Here, I will preform some data transformations and ETL (extract, transform, load) processes to help analyze the data (e.g spectral comparision techniques).

# Code

*spectral_csv_binder.Rmd*

> Accesses the csv files in the ASCII folders and concatenates them into one big csv file.

*spectral_plots_all.Rmd*

> Plots all samples for each season onto a pdf. Each plot contains the site codes and number

*wp_spectral_analysis.Rmd*

> -   Calculates summary statistics (mean, median, standard deviation, quartiles, etc) and uses the HSDAR package to calculate spectral comparison techniques (e.g euclidean distance and spectral angle mapper). Spectral comparison techniques can be used on the mean or median of the data (look at the parameters for the *comparison_technique* function). todo: summary plots
> -   At the bottom of this notebook, there is code to define which samples you want to remove from the data set given a specified range of row numbers. One way to use this is to look at the plots generated from the *spectral_plots_all.Rmd* notebook (e.g wp_summer_spectra_plots_WR.pdf) and take note of the plot numbers there.
> -   You will have to do this for the Spring 2022 data, as LATT1p_0522_0100000, LATT1p_0522_0100001, LATT1p_0522_0100002 have corrupted data. Their row numbers are already defined in notebook (463:465).
