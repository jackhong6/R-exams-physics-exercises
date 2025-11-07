library("exams")

exm <- list(c("tf-momentum-conserved-elastic-and-inelastic.Rmd",
               "tf-collide-and-stick-kinetic-energy.Rmd",
               "tf-collide-and-stick-momentum.Rmd",
               "tf-kinetic-energy-conserved.Rmd"),
             c("unit-of-impulse.Rmd",
               "force-during-collision.Rmd",
               "impulse-during-collision.Rmd",
               "KE-in-terms-of-p.Rmd",
               "area-under-force-time-graph.Rmd",
               "ball-vs-putty-momentum-change.Rmd",
               "greater-impulse-bouncing-balls.Rmd",
               "KE-when-momentum-doubled.Rmd",
               "type-of-collision-billiard-balls.Rmd"),
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
               "calc-avg-force-machine-gun.Rmd",
               "calc-momentum-dropped-ball.Rmd",
               "calc-vf-inelastic-collision-mass-at-rest.Rmd",
               "calc-change-in-momentum.Rmd",
               "calc-v-fire-hose.Rmd"),
              c("calc-fraction-KE-lost.Rmd",
               "calc-v-proton-hit-by-alpha.Rmd",
               "calc-vf-ice-skaters-inelastic-collision-mass-at-rest.Rmd",
               "calc-bullet-speed-ballistic-pendulum.Rmd",
               "calc-KE-ratio-same-p-diff-m.Rmd"))


set.seed(2025*10*27)
exams2nops(exm, n = 4, nsamp = 4, date = as.Date("2025-10-27"), edir = "../exercises", title = "Momentum Test", 
           course = "Physics 12", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = "momentum-test", name = "momentum-test", helvet = TRUE,
           usepackage = c("siunitx", "eulervm"), seed = TRUE)
set.seed(2025*10*27)
exams2pdf(exm, n = 4, nsamp = 4, edir = "../exercises", template = "../templates/solution.tex", 
          header = list(Course = "Physics 12", Title = "Momentum Test Solutions"),
          dir = "momentum-test", name = "momentum-quiz-solutions", seed = TRUE)

