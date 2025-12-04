library("exams")

# Include all the questions in the specified folder in the exam.
my_exam <- c(dir("exercises/electricity"))
my_exam <- sample(my_exam, 45) # randomize


# Include only the exercises listed.
my_exam <- list("momentum-of-male-olympic-sprinter.Rmd",
                "calc-impulse-right-angle-collision.Rmd",
                "unit-of-momentum.Rmd",
                "impulse-is-area-under-which-graph.Rmd",
                "impulse-during-collision-ball-and-cart.Rmd")

# Generate different PDFs
s <- 2025*11*7
set.seed(s)
exams2pdf(my_exam, edir = "exercises", template = "templates/practice", 
          header = list(Course = "Physics 11", Title = "Dynamics Practice Test"))

set.seed(s)
exams2pdf(my_exam, edir = "exercises",template = "templates/solution.tex", 
          header = list(Course = "Physics 11/12", Title = "Practice Test Solutions"))

set.seed(s)
exams2nops(my_exam, edir = "exercises", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", blank = 0, samepage = TRUE,
           usepackage = c("eulervm", "siunitx"))

# Stress test an exercise
st_results <- stresstest_exercise("calc-electrons-from-charge.Rmd")
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

