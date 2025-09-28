library("exams")

quiz <- list(c("which-are-scalars.Rmd", "which-are-vectors.Rmd"),
          c("what-is-a-scalar.Rmd", "what-is-a-vector.Rmd"),
          "calculate-car-travel-distance-2-stages.Rmd",
          "calculate-d-given-v-kmh-t-min.Rmd",
          "calculate-d-given-v-t.Rmd",
          "calculate-light-travel-time-from-sun.Rmd",
          "calculate-light-year-distance-in-miles.Rmd",
          "calculate-marathon-time-given-pace.Rmd",
          "calculate-t-given-d-v.Rmd",
          "calculate-v-avg-given-speeds-and-distances.Rmd",
          "calculate-v-avg-given-speeds-and-times.Rmd",
          "p-t-graph-obj-at-rest.Rmd",
          "p-t-graph-slope-meaning.Rmd",
          c("p-t-graph-slowing-down-to-the-left.Rmd", 
            "p-t-graph-slowing-down-to-the-right.Rmd",
            "p-t-graph-speeding-up-to-the-left.Rmd",
            "p-t-graph-speeding-up-to-the-right.Rmd"),
          "v-t-graph-postive-acc.Rmd")

set.seed(2025*9*17)
exams2nops(quiz, date = as.Date("2025-09-17"), edir = "exercises", title = "Chapter 3 Quiz", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = "output", name = "phys11-ch3-quiz", 
           usepackage = c("siunitx", "libertinus", "libertinust1math"))
set.seed(2025*9*17)
exams2pdf(quiz, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics 11", Title = "Chapter 3 Quiz Solutions"),
          dir = "output", name = "phys11-ch3-quiz-solutions")

set.seed(2025*9*17)
exams2moodle(quiz, edir = "exercises", usepackage = c("siunitx"))

