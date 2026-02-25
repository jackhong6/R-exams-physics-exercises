library("exams")

quiz <- c("calc-horizontal-d-two-packages-dropped-from-plane.Rmd",
          "horizontal-distance-between-packages-dropped-from-plane.Rmd",
          "calc-range-2d-projectile.Rmd",
          "calc-range-horizontal-projectile-with-initial-height.Rmd",
          "calc-t-given-vi-1d-projectile.Rmd",
          "calc-v-components-given-a-components.Rmd",
          "compare-range-at-different-angles.Rmd",
          "hang-time-on-moon.Rmd",
          "range-on-moon.Rmd",
          "vel-at-top-2d-projectile.Rmd")

s <- 2026*2*25

set.seed(s)
exams2pdf(quiz, n = 1, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics 11", Title = "Chapter 7.1 Quiz Solutions"), name = "phys11-ch7-1-quiz-solutions")

set.seed(s)
exams2moodle(quiz, edir = "exercises", dir = "output")

