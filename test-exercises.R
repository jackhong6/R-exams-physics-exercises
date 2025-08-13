library("exams")

# Include all the questions in the kinematics folder in the exam.
my_exam <- dir(path = "exercises/elasticity")
my_exam <- sample(my_exam, 45) # randomize


# Include only the exercises listed.
my_exam <- list("calculate-d-given-vi-vf-t-aircraft-carrier.Rmd",
    "calculate-a-given-0-to-60.Rmd",
    "free-fall-vertical-launch-max-height-scaling-with-vi.Rmd",
    "free-fall-diff-in-distances.Rmd",
    "free-fall-diff-in-speeds.Rmd",
    "free-fall-compare-impact-speed-thrown-up-vs-down.Rmd",
    "calculate-t-given-vi-projectile-1d.Rmd",
                "calculate-marathon-time-given-pace.Rmd",
                "calculate-t-given-a-vi-vf-kmh.Rmd",
                "stopping-distance-scaling-with-speed.Rmd",
                "calculate-t-given-d-v.Rmd",
                "calculate-t-given-a-vi-vf.Rmd")

# Generate different PDFs
exams2pdf(my_exam, edir = "exercises")
exams2pdf(my_exam, edir = "exercises", template = "solution.tex")
exams2nops(my_exam, edir = "exercises")

# Stress test an exercise
st_results <- stresstest_exercise("C:/Users/jackh/OneDrive/Documents/GitHub/R-exams-physics-problems/exercises/statics/calculate-balance-position-on-massless-seesaw.Rmd")
plot(st_results)
