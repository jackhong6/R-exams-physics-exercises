library("exams")

# Include all the questions in the specified folder in the exam.
my_exam <- c(dir("exercises/dynamics"))
my_exam <- sample(my_exam, 45) # randomize


# Include only the exercises listed.
my_exam <- list("tf-obj-at-rest-no-forces.Rmd",
                "adding-vectors-possibilities.Rmd"
                "tf-obj-at-rest-zero-net-force.Rmd",
                "tf-more-speed-more-inertia.Rmd",
                "tf-force-on-2d-projectile.Rmd",
                "tf-less-weight-on-moon.Rmd",
                "tf-leftward-motion-leftward-force.Rmd")

# Generate different PDFs
s <- 2025*11*7
set.seed(s)
exams2pdf(my_exam, edir = "exercises", template = "templates/practice", 
          header = list(Course = "Physics 11", Title = "Dynamics Practice Test"))

set.seed(s)
exams2pdf(my_exam, edir = "exercises",template = "templates/solution.tex", 
          header = list(Course = "Physics 11", Title = "Dynamics Practice Test Solutions"))

set.seed(s)
exams2nops(my_exam, edir = "exercises", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", blank = 0, samepage = TRUE,
           usepackage = c("eulervm", "siunitx"))

# Stress test an exercise
st_results <- stresstest_exercise("~/Documents/GitHub/R-exams-physics-exercises/exercises/kinematics/calculate-d2-given-d1-const-a.Rmd")
plot(st_results)

set.seed(1)
exams2nops(my_exam, edir = "exercises", title = "Sample Exam 1", course = "Physics", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = "output", name = "sample-exam-1", usepackage = c("siunitx"))
set.seed(1)
exams2pdf(my_exam, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics", Title = "Solutions to Sample Exam 1"),
          name = "sample-exam-1-solutions")

set.seed(2)
exams2nops(my_exam, edir = "exercises", title = "Sample Exam 2", course = "Physics", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = "output", name = "sample-exam-2", usepackage = c("siunitx"))
set.seed(2)
exams2pdf(my_exam, edir = "exercises", template = "templates/solution.tex", header = list(Course = "Physics", Title = "Solutions to Sample Exam 2"),
          dir = "output", name = "sample-exam-2-solutions")

