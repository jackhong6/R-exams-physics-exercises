library("exams")

quiz <- list("current-increased-by.Rmd",
             "current-measuring-device.Rmd",
             "amp-hours.Rmd",
             "calc-battery-energy.Rmd",
             "calc-V-ohms-law.Rmd",
             "calc-R-ohms-law.Rmd",
             "calc-I-ohms-law.Rmd",
             "calc-P-given-I-V.Rmd",
             "calc-energy-given-R-V.Rmd",
             "calc-energy-given-R-V.Rmd")

s <- 2025 * 12 * 10
name <- "ch22-quiz"

set.seed(s)
exams2nops(quiz, n = 1, date = as.Date("2025-12-10"), edir = "exercises", title = "Chapter 22 Quiz", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx", "eulervm"))


set.seed(s)
exams2pdf(quiz, n = 1, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 11", Title = "Chapter 11 Quiz Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep="-"))

set.seed(s)
exams2moodle(quiz, edir = "exercises", dir = paste0("exams/", name))

