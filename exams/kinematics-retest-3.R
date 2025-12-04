library("exams")

exm <- list(c("tf-speeding-up-acc-and-vel-same-direction.Rmd",
               "tf-acc-in-direction-of-motion.Rmd",
               "tf-changing-dir-v-t-graph.Rmd",
               "tf-horizontal-line-v-t-graph.Rmd",
               "tf-zero-vel-at-top-2d.Rmd",
               "tf-area-under-v-t-graph.Rmd",
               "tf-slowing-down-v-t-graph.Rmd"),
             c("which-are-scalars.Rmd",
               "acc-2d-projectile.Rmd",
               "hang-time-on-moon.Rmd",
               "const-acc-description.Rmd",
               "stopping-distance-scaling-with-speed.Rmd",
               "compare-range-at-different-angles.Rmd",
               "vel-at-top-2d-projectile.Rmd",
               "vel-accel-signs-moving-left-right.Rmd",
               "longest-hang-time-2d-projectile.Rmd",
               "free-fall-diff-in-speeds.Rmd",
               "free-fall-diff-in-distances.Rmd"),
             c("p-t-graph-slowing-down-to-the-left.Rmd",
               "p-t-graph-obj-at-rest.Rmd",
               "v-t-graphs-slowing-down-select-all.Rmd",
               "v-t-graph-positive-acc.Rmd",
               "v-t-graph-change-direction.Rmd"),
             c("calc-v-components-given-a-components.Rmd",
               "calc-t-given-d-v.Rmd",
               "calc-marathon-time-given-pace.Rmd",
               "calc-car-braking-distance.Rmd",
               "calc-v-avg-given-speeds-and-distances.Rmd",
               "calc-t-given-a-vi-vf-kmh.Rmd",
               "calc-a-given-0-to-60.Rmd",
               "calc-d-given-v-kmh-t-min.Rmd"),
             c("calc-range-2d-projectile.Rmd",
               "calc-t-given-vi-1d-projectile.Rmd",
               "calc-vi-given-t-1d-projectile.Rmd",
               "calc-t-given-vi-h-1d-projectile.Rmd",
               "calc-range-horizontal-projectile-with-initial-height.Rmd",
               "calc-max-h-given-vi-projectile-1d.Rmd"))


s <- 2025 * 11 * 25
name <- "kinematics-retest-3"

set.seed(s)
exams2nops(exm, n = 2, nsamp = 5, date = as.Date("2025-11-26"), edir = "exercises", title = "Kinematics Retest 3", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx", "eulervm"))


set.seed(s)
exams2pdf(exm, n = 2, nsamp = 5, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics 11", Title = "Kinematics Retest 3 Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep="-"))


