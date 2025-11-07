library("exams")

calc <- list("calculate-d-given-v-kmh-t-min.Rmd",
          "calculate-d-given-v-t.Rmd",
          "calculate-v-avg-given-speeds-and-distances.Rmd",
          "calculate-v-avg-given-speeds-and-times.Rmd",
          "calculate-a-given-0-to-60.Rmd",
          "calculate-a-given-t-v-avg-car-stopping.Rmd",
          "calculate-car-braking-distance.Rmd",
          "calculate-d-given-vi-vf-t-aircraft-carrier.Rmd",
          "calculate-t-given-a-vi-vf-kmh.Rmd",
          "calculate-t-given-a-vi-vf.Rmd")
          
proj_calc <- list("calculate-t-given-vi-h-1d-projectile.Rmd",
                  "calculate-vi-given-t-1d-projectile.Rmd",
                  "calculate-max-h-given-vi-projectile-1d.Rmd",
                  "calculate-range-2d-projectile.Rmd",
                  "calculate-range-horizontal-projectile-with-initial-height.Rmd")

tf <- list("tf-zero-acc-at-top-1d.Rmd",
          "tf-zero-acc-at-top-2d.Rmd",
          "tf-zero-acc-still-moving.Rmd",
          "tf-zero-vel-at-top-1d.Rmd",
          "tf-zero-vel-at-top-2d.Rmd")

concept <- list(c("which-are-scalars.Rmd", "which-are-vectors.Rmd"),
                "change-vel-direction-const-acc.Rmd",
                "stopping-distance-scaling-with-speed.Rmd",
                "free-fall-acc-vel.Rmd",
                "free-fall-compare-impact-speed-thrown-up-vs-down.Rmd",
                "free-fall-vertical-launch-vel.Rmd",
                "free-fall-heavy-v-light.Rmd",
                "free-fall-acc-vel-directions-going-down.Rmd",
                "free-fall-acc-vel-directions-going-up.Rmd",
                "free-fall-vertical-launch-acc.Rmd",
                "free-fall-vertical-launch-max-height-scaling-with-vi.Rmd",
                "p-t-graph-obj-at-rest.Rmd",
                "p-t-graph-slope-meaning.Rmd",
                c("p-t-graph-slowing-down-to-the-left.Rmd", 
                  "p-t-graph-slowing-down-to-the-right.Rmd",
                  "p-t-graph-speeding-up-to-the-left.Rmd",
                  "p-t-graph-speeding-up-to-the-right.Rmd"),
                "v-t-graph-postive-acc.Rmd",
                "longest-air-time-2d-projectile.Rmd",
                "range-on-moon.Rmd",
                "horizontal-distance-between-packages-dropped-from-plane.Rmd")


set.seed(2025*10*6)
my_exam <- c(tf, sample(concept, 10), sample(calc, 5), sample(proj_calc, 5))

set.seed(2025*10*6)
exams2nops(my_exam, n = 4, date = as.Date("2025-10-06"), edir = "exercises", title = "Physics 11 Kinematics Unit Test", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = "kinematics-tests", name = "phys11-kinematics-test", helvet = TRUE,
           usepackage = c("siunitx", "eulervm"))
set.seed(2025*10*6)
exams2pdf(my_exam, n = 4, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics 11", Title = "Kinematics Unit Test Solutions"),
          dir = "kinematics-tests", name = "kinematics-test-solutions")

retest <- list(c("tf-area-under-p-t-graph.Rmd",
                 "tf-area-under-v-t-graph.Rmd",
                 "tf-changing-dir-v-t-graph.Rmd",
                 "tf-horizontal-line-v-t-graph.Rmd",
                 "tf-slowing-down-v-t-graph.Rmd",
                 "tf-vel-in-direction-of-motion.Rmd",
                 "tf-acc-in-direction-of-motion.Rmd"),
               c("which-are-scalars.Rmd",
                 "vel-accel-signs-moving-left-right.Rmd",
                 "p-t-graph-slope-meaning.Rmd",
                 "v-t-graph-max-displacement.Rmd",
                 "v-t-graph-slowing-down.Rmd"),
               c("range-on-planet.Rmd",
                 "free-fall-vertical-launch-max-height-scaling-with-vi.Rmd",
                 "free-fall-diff-in-distances.Rmd",
                 "free-fall-vertical-launch-acc.Rmd",
                 "stopping-distance-scaling-with-speed.Rmd"),
               c("calculate-car-braking-distance.Rmd",
                 "calculate-horizontal-d-two-packages-dropped-from-plane.Rmd",
                 "calculate-marathon-speed-given-time.Rmd",
                 "calculate-v-avg-given-speeds-and-times.Rmd",
                 "calculate-a-given-t-v-avg-car-stopping.Rmd"),
               c("calculate-t-given-vi-h-1d-projectile.Rmd",
                 "calculate-vi-given-t-1d-projectile.Rmd",
                 "calculate-max-h-given-vi-projectile-1d.Rmd",
                 "calculate-range-2d-projectile.Rmd",
                 "calculate-range-horizontal-projectile-with-initial-height.Rmd"))
set.seed(2025*10*15)
exams2nops(retest, n = 4, nsamp = 5, date = as.Date("2025-10-15"), edir = "exercises", title = "Physics 11 Kinematics Retest", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = "kinematics-tests", name = "phys11-kinematics-retest", helvet = TRUE,
           usepackage = c("siunitx", "eulervm"), seed = TRUE)
