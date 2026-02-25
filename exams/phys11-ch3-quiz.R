library("exams")

quiz <- list(c("which-are-scalars.Rmd", "which-are-vectors.Rmd"),
          c("what-is-a-scalar.Rmd", "what-is-a-vector.Rmd"),
          "calc-d-given-v-kmh-t-min.Rmd",
          "avg-vel-running-around-track.Rmd",
          "calc-d-given-v-t.Rmd",
          "calc-light-travel-time-from-sun.Rmd",
          "calc-light-year-distance-in-miles.Rmd",
          "calc-marathon-time-given-pace.Rmd",
          "calc-t-given-d-v.Rmd",
          "calc-v-avg-given-speeds-and-distances.Rmd",
          "calc-v-avg-given-speeds-and-times.Rmd",
          "p-t-graph-obj-at-rest.Rmd",
          "p-t-graph-slope-meaning.Rmd",
          c("p-t-graph-slowing-down-to-the-left.Rmd", 
            "p-t-graph-slowing-down-to-the-right.Rmd",
            "p-t-graph-speeding-up-to-the-left.Rmd"),
          "v-t-graph-positive-acc.Rmd")

seed <- 2026*2*12

set.seed(seed)
exams2moodle(quiz, edir = "exercises", dir = "output")

set.seed(seed)
exams2nops(quiz, date = as.Date("2025-09-17"), edir = "exercises", title = "Chapter 3 Quiz", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = "output", name = "phys11-ch3-quiz", 
           usepackage = c("siunitx", "libertinus", "libertinust1math"))

set.seed(seed)
exams2pdf(quiz, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics 11", Title = "Chapter 3 Quiz Solutions"),
          dir = "output", name = "phys11-ch3-quiz-solutions")
