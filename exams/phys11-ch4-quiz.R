library("exams")

calc <- c("calc-a-given-0-to-60.Rmd",
          "calc-a-given-t-v-avg-car-stopping.Rmd",
          "calc-car-braking-distance.Rmd",
          "calc-d-given-vi-vf-t-aircraft-carrier.Rmd",
          "calc-max-h-given-vi-projectile-1d.Rmd",
          "calc-t-given-a-vi-vf-kmh.Rmd",
          "calc-t-given-vi-h-1d-projectile.Rmd",
          "calc-vi-given-t-1d-projectile.Rmd")

tf <- c("tf-zero-acc-at-top-1d.Rmd",
             "tf-zero-acc-still-moving.Rmd",
             "tf-zero-vel-at-top-1d.Rmd")

concept <- c("change-vel-direction-const-acc.Rmd",
            "free-fall-acc-vel.Rmd",
            "free-fall-vertical-launch-vel.Rmd",
            "free-fall-heavy-v-light.Rmd",
            "free-fall-acc-vel-directions-going-down.Rmd",
            "free-fall-acc-vel-directions-going-up.Rmd",
            "free-fall-vertical-launch-acc.Rmd",
            "free-fall-vertical-launch-max-height-scaling-with-vi.Rmd")

s <- 2026*2*19

set.seed(s)
quiz <- c(tf, sample(concept, 4), sample(calc, 8))

set.seed(2025*9*25)
exams2nops(quiz, n = 2, date = as.Date("2025-09-25"), edir = "exercises", title = "Physics 11: Chapter 4 Quiz", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = "output", name = "phys11-ch4-quiz", helvet = TRUE,
           usepackage = c("siunitx", "eulervm"))

set.seed(s)
exams2pdf(quiz, n = 1, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics 11", Title = "Chapter 4 Quiz Solutions"), name = "phys11-ch4-quiz-solutions")

set.seed(s)
exams2moodle(quiz, edir = "exercises", dir = "output")

