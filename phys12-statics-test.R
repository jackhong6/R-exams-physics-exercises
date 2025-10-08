library("exams")

concept <- list("conditions-for-static-equilibrium.Rmd",
             c("net-force-at-rest.Rmd", "net-force-constant-velocity.Rmd"),
             "direction-of-forces-on-cantilever.Rmd",
             "moving-forward-on-massless-seesaw.Rmd",
             "moving-forward-on-massive-balanced-seesaw.Rmd",
             "moving-forward-on-massive-unbalanced-seesaw.Rmd",
             "standing-on-two-scales.Rmd")

calc <- list("calculate-balance-position-on-massless-seesaw.Rmd",
             c("calculate-lever-force-to-lift-weight.Rmd",
               "calculate-lever-max-weight.Rmd"),
             "calculate-force-on-right-support.Rmd",
             c("calculate-both-tensions-in-hanging-scaffold.Rmd",
               "calculate-left-tension-in-hanging-scaffold.Rmd"),
             c("calculate-F1-on-cantilever.Rmd",
               "calculate-F2-on-cantilever.Rmd"),
             "calculate-tension-horizontal-beam.Rmd",
             "calculate-tension-horizontal-beam-with-load.Rmd",
             c("calculate-force-on-hinge-angled-massless-beam-with-load.Rmd",
               "calculate-force-on-hinge-horizontal-beam.Rmd"),
             "calculate-tension-angled-beam.Rmd",
             "calculate-tension-angled-massless-beam-with-load.Rmd",
             "calculate-position-of-rock-between-two-scales.Rmd",
             "calculate-max-tension-hanging-box.Rmd",
             "calculate-min-angle-ladder.Rmd")

set.seed(2025*10*2)
statics_exam <- sample(c(concept, calc))

set.seed(2025*10*2)
exams2nops(statics_exam, n = 1, date = as.Date("2025-10-02"), edir = "exercises", title = "Physics 12 Statics Unit Test", 
           course = "Physics 12", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = "output", name = "phys12-statics-test-3", helvet = TRUE,
           usepackage = c("siunitx", "eulervm"))
set.seed(2025*9*29)
exams2pdf(statics_exam, n = 2, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics 12", Title = "Solutions to Physics 12 Statics Unit Test"),
          dir = "output", name = "phys12-statics-solutions")

