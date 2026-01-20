library("exams")

exm <- list(c("tf-obj-at-rest-no-forces.Rmd", 
              "tf-equilibrium-moving.Rmd", 
              "tf-obj-at-rest-zero-net-force.Rmd"),
            c("tf-same-mass-on-moon.Rmd", 
              "tf-less-weight-on-moon.Rmd"),
            c("tf-more-speed-more-inertia.Rmd", 
              "tf-leftward-motion-leftward-force.Rmd", 
              "tf-force-on-2d-projectile.Rmd"),
            c("elevator-less-than-mg.Rmd",
              "elevator-more-than-mg.Rmd"),
            c("force-pushing-against-wall.Rmd",
              "which-force-is-greater.Rmd",
              "force-on-golf-club.Rmd"),
            c("which-has-greater-inertia.Rmd",
              "why-greater-force-needed-to-start-motion.Rmd",
              "net-force-constant-velocity.Rmd"),
            c("identify-reaction-force-book-on-desk.Rmd",
              "identify-reaction-force-falling-apple.Rmd"),
            c("gravitational-force-is-called.Rmd",
              "tension-elevator-const-v.Rmd",
              "net-force-constant-velocity-elevator.Rmd"),
            c("calc-g-given-weight-mass.Rmd"),
            c("calc-force-from-mass-and-acceleration.Rmd",
              "calc-mass-from-force-and-acceleration.Rmd",
              "calc-acceleration-from-force-and-mass.Rmd"),
            c("calc-mu-k-incline-const-vel.Rmd",
              "calc-mu-s-incline.Rmd"),
            c("calc-force-for-constant-velocity.Rmd",
              "parallel-perpendicular-forces-as-incline-angle-increases.Rmd"),
            c("calc-net-force-magnitude-perp.Rmd",
              "calc-equilibrant-magnitude-perp.Rmd"),
            c("calc-net-force-angle-perp.Rmd",
              "calc-f2-given-sum-of-perp-forces.Rmd"),
            c("calc-net-force-angle.Rmd",
              "calc-net-force-magnitude.Rmd"),
            c("calc-net-force-box2-pushing-two-boxes.Rmd",
              "calc-tension-hanging-sign.Rmd",
              "calc-tension-horizontal-boxes.Rmd",
              "calc-pulley-system-tension.Rmd",
              "calc-pulley-system-acceleration.Rmd"),
            "calc-equilibrant-angle.Rmd",
            "calc-a-inclined-plane-no-friction.Rmd",
            "calc-a-inclined-plane-with-friction.Rmd",
            "calc-mu-k-incline-const-acc.Rmd")

name <- "dynamics-retest"
s <- 2025*1*19

set.seed(s)
exams2nops(exm, n = 4, date = as.Date("2025-01-19"), edir = "exercises", title = "Dynamics Unit Retest 2", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("siunitx"), seed = TRUE)

set.seed(s)
exams2pdf(exm, n = 4, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 11", Title = "Dynamics Unit Retest 2 Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep= "-"), seed = TRUE)

