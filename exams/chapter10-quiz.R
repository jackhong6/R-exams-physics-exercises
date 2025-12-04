library("exams")

quiz <- c(dir("exercises/energy"))

s <- 2025 * 11 * 19
name <- "ch10-quiz"

set.seed(s)
exams2nops(quiz, n = 1, nsamp = 3, date = as.Date("2025-11-05"), edir = "exercises", title = "Vectors Quiz", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx", "eulervm"))


set.seed(s)
exams2pdf(quiz, n = 1, nsamp = 3, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics 11", Title = "Vectors Quiz Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep="-"))

set.seed(s)
exams2moodle(quiz, edir = "exercises", dir = paste0("exams/", name))

