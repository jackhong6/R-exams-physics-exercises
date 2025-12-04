library("exams")

quiz <- c("calc-kinetic-energy.Rmd",
          "calc-potential-energy.Rmd",
          "KE-gained-with-air-resistance.Rmd",
          "PE-lost-with-air-resistance.Rmd",
          "transfer-of-energy.Rmd",
          "calc-braking-distance.Rmd",
          "prop-braking-distance.Rmd",
          "work-energy-theorem.Rmd",
          "calc-rocket-height.Rmd",
          "calc-friction-work-slide.Rmd")

s <- 2025 * 11 * 25
name <- "ch11-quiz"

set.seed(s)
exams2nops(quiz, n = 1, date = as.Date("2025-11-25"), edir = "exercises", title = "Chapter 11 Quiz", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx", "eulervm"))


set.seed(s)
exams2pdf(quiz, n = 1, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 11", Title = "Chapter 11 Quiz Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep="-"))

set.seed(s)
exams2moodle(quiz, edir = "exercises", dir = paste0("exams/", name))

