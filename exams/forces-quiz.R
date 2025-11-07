library("exams")

quiz <- list(dir("exercises/dynamics"))

set.seed(2025*10*28)
exams2nops(quiz, n = 2, nsamp = 15, date = as.Date("2025-10-27"), edir = "../exercises", title = "Forces Quiz", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
             blank = 0, samepage = TRUE, dir = "forces-quiz", name = "forces-quiz", helvet = TRUE,
           usepackage = c("siunitx", "eulervm"), seed = TRUE)
set.seed(2025*10*28)
exams2pdf(quiz, n = 2, nsamp = 15, edir = "../exercises", template = "../templates/solution.tex", 
          header = list(Course = "Physics 11", Title = "Forces Quiz Solutions"),
          dir = "forces-quiz", name = "forces-quiz-solutions", seed = TRUE)

set.seed(2025*10*29)
exams2moodle(quiz, n = 1, nsamp = 3, edir = "exercises", dir = "momentum-quiz")

