library("exams")

quiz <- list(c("tf-speeding-up-acc-and-vel-same-direction.Rmd",
               "tf-acc-in-direction-of-motion.Rmd",
               "tf-changing-dir-v-t-graph.Rmd",
               "tf-horizontal-line-p-t-graph.Rmd",
               "tf-horizontal-line-v-t-graph.Rmd",
               "tf-zero-vel-at-top-2d.Rmd",
               "tf-zero-vel-at-top-1d.Rmd",
               "tf-area-under-v-t-graph.Rmd",
               "tf-slowing-down-v-t-graph.Rmd",
               "tf-vel-in-direction-of-motion.Rmd"),
             c("which-are-vectors.Rmd",
               "acc-2d-projectile.Rmd",
               "hang-time-on-moon.Rmd",
               "range-on-mars.Rmd",
               "const-acc-description.Rmd",
               "stopping-distance-scaling-with-speed.Rmd",
               "compare-range-at-different-angles.Rmd",
               "which-has-greater-acc-bike-or-car.Rmd",
               "vel-at-top-2d-projectile.Rmd",
               "vel-accel-signs-moving-left-right.Rmd",
               "longest-hang-time-2d-projectile.Rmd",
               "free-fall-diff-in-speeds.Rmd",
               "free-fall-diff-in-distances.Rmd"),
             c("p-t-graph-max-displacement.Rmd",
               "p-t-graph-speeding-up-to-the-left.Rmd",
               "v-t-graphs-slowing-down-select-all.Rmd",
               "v-t-graph-positive-acc.Rmd",
               "p-t-graph-slope-meaning.Rmd"),
             c("calculate-v-components-given-a-components.Rmd",
               "calculate-t-given-d-v.Rmd",
               "calculate-light-year-distance-in-miles.Rmd",
               "calculate-marathon-time-given-pace.Rmd",
               "calculate-car-braking-distance.Rmd",
               "calculate-v-avg-given-speeds-and-distances.Rmd",
               "calculate-t-given-a-vi-vf-kmh.Rmd",
               "calculate-light-travel-time-from-sun.Rmd",
               "calculate-a-given-0-to-60.Rmd",
               "calculate-d-given-v-kmh-t-min.Rmd"),
             c("calculate-range-2d-projectile.Rmd",
               "calculate-t-given-vi-1d-projectile.Rmd",
               "calculate-vi-given-t-1d-projectile.Rmd",
               "calculate-t-given-vi-h-1d-projectile.Rmd",
               "calculate-range-horizontal-projectile-with-initial-height.Rmd",
               "calculate-max-h-given-vi-projectile-1d.Rmd"))


s <- 2025 * 11 * 7
name <- "kinematics-retest-2"

set.seed(s)
exams2nops(quiz, n = 4, nsamp = 5, date = as.Date("2025-11-05"), edir = "exercises", title = "Kinematics Retest 2", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx", "eulervm"))


set.seed(s)
exams2pdf(quiz, n = 4, nsamp = 5, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics 11", Title = "Kinematics Retest 2 Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep="-"))


