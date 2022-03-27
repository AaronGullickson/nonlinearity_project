# Nonlinearity/IID Project

This repository contains data from the World Bank on GDP per capita and CO2 emissions per capita for all countries where data was available in 2018. The `organize_data.R` script has already converted the raw data into an analytical dataset named `worldbank` that is available in the `output` directory. 

Your goal in this project is to explore the relationship between GDP per capita and CO2 emissions per capita. You should focus on the following issues:

* Addressing non-linearity in the relationship between these two variables. 
* Addressing potential i.i.d. violations such as heteroskedasticity (watch for cone shapes!).

You will conduct your analysis and report your findings in the provided `report.Rmd` file. This file already contains R code chunks to load the necessary libraries and analytical data. You should create additional code chunks as needed to create figures, create models, etc. In your analysis, you should treat GDP per capita as the independent variable (i.e. the variable on the x-axis). Your analysis should include:

* Graphical exploration of the relationship, and text description of what this graphical exploration reveals.
* A final model which bests fit the underlying functional form and a description of what that model tells you about the relationship.

When you are satisfied with your report, you should knit it to PDF and submit the PDF on Canvas.
