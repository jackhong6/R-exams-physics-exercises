library("exams")

exm <- list(c("electric-scalars.Rmd", "electric-vectors.Rmd"),
            c("electrically-charged-object.Rmd", "electrically-neutral-object.Rmd"),
            "electric-field-lines-description.Rmd",
            "electron-volt-unit.Rmd",
            "calc-coulomb-force.Rmd",
            c("prop-coulomb-force-with-distance.Rmd", "prop-electric-field-with-distance.Rmd"),
            "prop-electric-potential-energy-with-distance.Rmd",
            "prop-electric-potential-with-distance.Rmd",
            "prop-coulomb-force-all.Rmd",
            "calc-force-in-electric-field.Rmd",
            "calc-voltage-given-energy-and-charge.Rmd",
            "calc-voltage-moving-in-uniform-electric-field.Rmd",
            "calc-electric-field-point-charge.Rmd",
            "calc-electric-field-square.Rmd",
            "calc-charge-hanging-balls.Rmd"
)

name <- "electricity-retest"
s <- 2025*1*20

set.seed(s)
exams2nops(exm, n = 2, date = as.Date("2025-01-20"), edir = "exercises", title = "Electricity Retest", 
           course = "Physics 12", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx"), seed = TRUE)

set.seed(s)
exams2pdf(exm, n = 2, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 12", Title = "Electricity Retest Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep= "-"), seed = TRUE)

