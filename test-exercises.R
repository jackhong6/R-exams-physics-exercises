library("exams")

# Include all the questions in the kinematics folder in the exam.
my_exam <- dir(path = "exercises/kinematics")
my_exam <- sample(my_exam, 45) # randomize


# Include only the exercises listed.
my_exam <- list("calculate-tension-angled-beam-with-load.Rmd")

# Generate different PDFs
exams2pdf(my_exam, edir = "exercises", template = "templates/practice", header = list(Course = "Physics 12", Title = "Statics Practice Problems"))
exams2pdf(my_exam, edir = "exercises", template = "templates/solution.tex")
exams2nops(my_exam, edir = "exercises", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", blank = 0, samepage = TRUE)

# Stress test an exercise
st_results <- stresstest_exercise("C:/Users/jackh/OneDrive/Documents/GitHub/R-exams-physics-problems/exercises/statics/calculate-balance-position-on-massless-seesaw.Rmd")
plot(st_results)
