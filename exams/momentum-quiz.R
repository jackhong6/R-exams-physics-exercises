library("exams")

quiz <- list(c("tf-momentum-conserved-completely-inelastic.Rmd",
               "tf-collide-and-stick-kinetic-energy.Rmd",
               "tf-collide-and-stick-momentum.Rmd"),
             c("ball-vs-putty-momentum-change.Rmd",
               "type-of-collision-billiard-balls.Rmd",
               "unit-of-impulse.Rmd"),
             c("elastic-collision-light-into-heavy-at-rest.Rmd",
               "elastic-collision-light-and-heavy-same-speed.Rmd",
               "calc-vf-inelastic-collision-mass-at-rest.Rmd"),
             c("calc-avg-force-baseball.Rmd",
               "calc-change-in-momentum.Rmd",
               "momentum-when-KE-doubled.Rmd"))


set.seed(2025*10*23)
exams2nops(quiz, n = 1, nsamp = 3, date = as.Date("2025-10-23"), edir = "exercises", title = "Momentum Quiz", 
           course = "Physics 12", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = "momentum-quiz", name = "momentum-quiz", helvet = TRUE,
           usepackage = c("siunitx", "eulervm"), seed = TRUE)
set.seed(2025*10*23)
exams2pdf(quiz, n = 1, nsamp = 3, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 12", Title = "Momentum Quiz Solutions"),
          dir = "momentum-quiz", name = "momentum-quiz-solutions", seed = TRUE)

moodle_quiz <- list(c("tf-momentum-conserved-elastic-and-inelastic.Rmd",
               "tf-collide-and-stick-kinetic-energy.Rmd",
               "tf-collide-and-stick-momentum.Rmd"),
             c("ball-vs-putty-momentum-change.Rmd",
               "KE-when-momentum-doubled.Rmd",
               "unit-of-momentum.Rmd"),
             c("elastic-collision-heavy-into-light-at-rest.Rmd",
               "elastic-collision-light-and-heavy-same-speed.Rmd",
               "calc-vf-inelastic-collision-mass-at-rest.Rmd"),
             c("calc-avg-force-baseball.Rmd",
               "calc-change-in-momentum.Rmd",
               "calc-momentum-dropped-ball.Rmd"))
set.seed(2025*10*23)
exams2moodle(quiz, n = 1, nsamp = 3, edir = "exercises", dir = "momentum-quiz")

set.seed(2025*10*23)
exams2pdf(quiz, n = 1, nsamp = 3, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 12", Title = "Momentum Moodle Quiz Solutions"),
          dir = "momentum-quiz", name = "momentum-moodle-quiz-solutions")
