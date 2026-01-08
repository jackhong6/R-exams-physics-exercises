library("exams")

exm <- list(c("current-increased-by.Rmd", "current-measuring-device.Rmd"),
            "amp-hours.Rmd",
            "calc-battery-energy.Rmd",
            "calc-V-ohms-law.Rmd",
            "calc-R-ohms-law.Rmd",
            "calc-I-ohms-law.Rmd",
            "calc-P-given-I-V.Rmd",
            c("calc-energy-given-R-V.Rmd", "calc-energy-given-I-V-t.Rmd"),
            c("power-adding-resistors-in-series.Rmd", "power-adding-resistors-in-parallel.Rmd"),
            "calc-R-series.Rmd",
            c("resistors-in-series.Rmd","resistors-in-parallel.Rmd"),
            "brighter-light-bulb-resistance.Rmd",
            "calc-R-parallel-100.Rmd",
            "calc-R-series-100.Rmd",
            "calc-I-through-resistor-parallel.Rmd",
            "calc-I-series.Rmd",
            "calc-I-parallel.Rmd",
            "calc-R-parallel.Rmd",
            "calc-I-in-parallel-resistor-given-I-total.Rmd",
            "calc-internal-resistance-given-current.Rmd")

name <- "circuits-test"
s <- 2025*12*17

set.seed(s)
exams2nops(exm, n = 4, date = as.Date("2025-12-17"), edir = "exercises", title = "Circuits Unit Test", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx"), seed = TRUE)

set.seed(s)
exams2pdf(exm, n = 4, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 11", Title = "Circuits Unit Test Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep= "-"), seed = TRUE)

