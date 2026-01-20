library("exams")

exm <- list("calc-kinetic-energy.Rmd",
            "calc-potential-energy.Rmd",
            "units-of-energy.Rmd",
            "transfer-of-energy.Rmd",
            c("bike-gear-shift-downhill.Rmd", "bike-gear-shift-uphill.Rmd"),
            "calc-efficiency-pulley-system.Rmd",
            "calc-elevator-power-given-speed.Rmd",
            "calc-IMA-inclined-plane.Rmd",
            c("calc-power-lifting-mass.Rmd", "calc-power-lifting-weight.Rmd"),
            "calc-work-done-lifting-weight.Rmd",
            "calc-work-done-pulling-at-angle.Rmd",
            c("calc-work-done-gravity-falling-weight.Rmd", "calc-work-done-gravity-falling-mass.Rmd"),
            c("ma-greater-than-1.Rmd", "ma-less-than-1.Rmd"),
            c("KE-gained-with-air-resistance.Rmd", "PE-lost-with-air-resistance.Rmd"),
            "calc-braking-distance.Rmd",
            "prop-braking-distance.Rmd",
            "work-energy-theorem.Rmd",
            "calc-time-given-power-of-elevator.Rmd",
            "calc-rocket-height.Rmd",
            "calc-friction-work-slide.Rmd")

name <- "energy-retest"
s <- 2025*1*20

set.seed(s)
exams2nops(exm, n = 2, date = as.Date("2025-01-20"), edir = "exercises", title = "Energy Unit Retest", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx"), seed = TRUE)

set.seed(s)
exams2pdf(exm, n = 2, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 11", Title = "Energy Unit Test Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep= "-"), seed = TRUE)

