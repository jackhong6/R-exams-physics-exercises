library("exams")

exm <- list(c("tf-momentum-conserved-completely-inelastic.Rmd",
               "tf-collide-and-stick-kinetic-energy.Rmd",
               "tf-collide-and-stick-momentum.Rmd",
               "tf-kinetic-energy-conserved.Rmd"),
             c("impulse-during-collision-ball-and-cart.Rmd",
               "impulse-is-area-under-which-graph.Rmd",
               "ball-vs-putty-momentum-change.Rmd",
               "type-of-collision-rebound.Rmd"),
             c("collide-and-bounce-kinetic-energy.Rmd",
               "collide-and-bounce-momentum.Rmd",
               "collide-and-stick-kinetic-energy.Rmd",
               "collide-and-stick-momentum.Rmd",
               "elastic-collision-heavy-into-light-at-rest.Rmd",
               "elastic-collision-light-into-heavy-at-rest.Rmd",
               "inelastic-collision-heavy-into-light-at-rest.Rmd",
               "inelastic-collision-light-into-heavy-at-rest.Rmd",
               "inelastic-collision-same-mass-and-speed.Rmd"),
             c("calc-avg-force-baseball.Rmd",
               "calc-vf-inelastic-collision-mass-at-rest.Rmd",
               "calc-change-in-momentum-bouncing-ball.Rmd",
               "momentum-of-male-olympic-sprinter.Rmd"),
             c("calc-fraction-KE-lost.Rmd",
               "calc-impulse-right-angle-collision.Rmd",
               "calc-vf-ice-skaters-inelastic-collision-mass-at-rest.Rmd",
               "calc-bullet-speed-ballistic-pendulum.Rmd"))

name <- "momentum-retest"
s <- 2025*12*4

set.seed(s)
exams2nops(exm, n = 2, nsamp = 4, date = as.Date("2025-12-04"), edir = "exercises", title = "Momentum Retest", 
           course = "Physics 12", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx", "eulervm"), seed = TRUE)

set.seed(s)
exams2pdf(exm, n = 2, nsamp = 4, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 12", Title = "Electricity Test Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep= "-"), seed = TRUE)

