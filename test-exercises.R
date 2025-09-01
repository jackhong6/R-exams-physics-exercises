library("exams")

# Include all the questions in the specified folder in the exam.
my_exam <- dir(path = "exercises/statics")
my_exam <- sample(my_exam, 45) # randomize


# Include only the exercises listed.
my_exam <- list("calculate-stress.Rmd", "calculate-piano-wire-tension.Rmd")

# Generate different PDFs
exams2pdf(my_exam, edir = "exercises", template = "templates/practice", 
          header = list(Course = "Physics 12", Title = "Statics Practice Problems"))
exams2pdf(my_exam, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 12", Title = "Solutions to Statics Practice Problems"))
exams2nops(my_exam, edir = "exercises", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", blank = 0, samepage = TRUE)

# Stress test an exercise
st_results <- stresstest_exercise("~/Documents/GitHub/R-exams-physics-exercises/exercises/statics/calculate-tension-in-hanging-scaffold.Rmd")
plot(st_results)

