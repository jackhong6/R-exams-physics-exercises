library("exams")

# Include all the questions in the specified folder in the exam.
my_exam <- dir(path = "exercises/kinematics")
my_exam <- sample(my_exam, 45) # randomize


# Include only the exercises listed.
my_exam <- list("avg-vel-running-around-track.Rmd",
                "calculate-a-given-0-to-60.Rmd",
                "calculate-a-given-t-v-avg-car-stopping.Rmd",
                "calculate-d-given-v-kmh-t-min.Rmd",
                "calculate-d-given-v-t.Rmd",
                "calculate-d-given-vi-vf-t-aircraft-carrier.Rmd",
                "calculate-marathon-time-given-pace.Rmd",
                "calculate-t-given-a-vi-vf-kmh.Rmd",
                "calculate-t-given-a-vi-vf.Rmd",
                "calculate-t-given-d-v.Rmd",
                "calculate-t-given-vi-projectile-1d.Rmd",
                "calculate-v-avg-given-speeds-and-distances.Rmd", 
                "calculate-v-avg-given-speeds-and-times.Rmd",
                "calculate-v-given-d-t.Rmd",
                "car-travel-distance-2-stages.Rmd",
                "free-fall-diff-in-speeds.Rmd",
                "free-fall-heavy-v-light.Rmd",
                "light-travel-time-from-sun.Rmd",
                "scalar-or-vector.Rmd",
                "tf-zero-acc-at-top-2d.Rmd")

# Generate different PDFs
exams2pdf(my_exam, edir = "exercises", template = "templates/practice", 
          header = list(Course = "Physics 12", Title = "Statics Practice Problems"))
exams2pdf(my_exam, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 12", Title = "Solutions to Statics Practice Problems"))
exams2nops(my_exam, edir = "exercises", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", blank = 0, samepage = TRUE)

# Stress test an exercise
st_results <- stresstest_exercise("~/Documents/GitHub/R-exams-physics-exercises/exercises/kinematics/calculate-v-avg-given-speeds-and-distances.Rmd")
plot(st_results)

