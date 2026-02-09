library("exams")

exm <- list(c("twin-paradox.Rmd",
              "relative-speeds.Rmd",
              "relative-lengths.Rmd",
              "reason-for-ether.Rmd",
              "michelson-morley-purpose.Rmd",
              "michelson-morley-light-beams.Rmd",
              "relativity-of-simultaneity.Rmd",
              "time-dilation.Rmd",
              "speed-of-light.Rmd",
              "length-contraction.Rmd",
              "lorentz-factor-expression.Rmd",
              "lorentz-factor-nonrelativistic-limit.Rmd",
              "michelson-morley-interference.Rmd", 
              "calc-lorentz-factor.Rmd",
              "calc-dilated-time.Rmd",
              "calc-proper-time.Rmd",
              "calc-proper-length.Rmd",
              "calc-contracted-length.Rmd",
              "calc-speed-given-lengths.Rmd", 
              "calc-light-distance-given-time.Rmd"))

name <- "special-relativity-test"
s <- 2025*1*22

set.seed(s)
exams2nops(exm, n = 2, nsamp = 20, date = as.Date("2025-01-22"), edir = "exercises",
           title = "Special Relativity Unit Test", 
           course = "Physics 12", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("sansmathfonts"), seed = TRUE)

set.seed(s)
exams2pdf(exm, n = 2, nsamp = 20, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 12", Title = "Special Relativity Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep= "-"), seed = TRUE)

