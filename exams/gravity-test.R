library("exams")

exm <- dir("exercises/gravity")

name <- "gravity-retest"
s <- 2025*1*19

set.seed(s)
exams2nops(exm, n = 2, date = as.Date("2025-01-19"), edir = "exercises", title = "Circular Motion and Gravity Retest", 
           course = "Physics 12", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx", "eulervm"), seed = TRUE)

set.seed(s)
exams2pdf(exm, n = 2, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 11", Title = "Circular Motion and Gravity Retest Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep= "-"), seed = TRUE)

