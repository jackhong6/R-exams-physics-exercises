library("exams")

quiz <- list("calc-R-series.Rmd",
                "resistors-in-series.Rmd",
                "resistors-in-parallel.Rmd",
                "brighter-light-bulb.Rmd",
                "ammeter-voltmeter-connections.Rmd",
                "calc-R-parallel-100.Rmd",
                "calc-R-series-100.Rmd",
                "calc-I-through-resistor-parallel.Rmd",
                "calc-I-series.Rmd",
                "calc-I-parallel.Rmd",
                "calc-R-parallel.Rmd",
                "calc-I-in-parallel-resistor-given-I-total.Rmd")

s <- 2025 * 12 * 15
name <- "ch23-quiz"

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

