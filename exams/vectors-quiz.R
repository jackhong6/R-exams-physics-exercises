library("exams")

quiz <- list(c("tf-a-is-half-g-45-incline.Rmd", 
               "tf-equilibrium-moving.Rmd",
               "greater-static-friction.Rmd",
               "tf-normal-force-less-than-mg-on-incline.Rmd"),
             c("calc-net-force-magnitude-perp.Rmd",
               "calc-net-force-angle-perp.Rmd",
               "calc-f2-given-sum-of-perp-forces.Rmd"),
             c("calc-net-force-angle.Rmd",
               "calc-equilibrant-angle.Rmd",
               "calc-equilibrant-magnitude-perp.Rmd"),
             c("adding-vectors-possibilities.Rmd",
               "calc-tension-hanging-sign.Rmd",
               "calc-net-force-magnitude.Rmd"))

s <- 2025 * 11 * 6
name <- "vectors-quiz"

set.seed(s)
exams2nops(quiz, n = 1, nsamp = 3, date = as.Date("2025-11-05"), edir = "exercises", title = "Vectors Quiz", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx", "eulervm"))


set.seed(s)
exams2pdf(quiz, n = 1, nsamp = 3, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics 11", Title = "Vectors Quiz Solutions"),
          dir = paste("exams/", name), name = paste(name, "solutions", sep="-"))

set.seed(s)
exams2moodle(quiz, nsamp = 3, edir = "exercises", dir = name)

