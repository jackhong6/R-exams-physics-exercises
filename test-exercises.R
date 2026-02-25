library("exams")

# Include all the questions in the specified folder in the exam.
my_exam <- c(dir("exercises/statics"))
my_exam <- sample(my_exam, 10) # randomize


# Include only the exercises listed.
my_exam <- c("avg-vel-running-around-track.Rmd",
             "calc-v-avg-given-speeds-and-distances.Rmd",
             "calc-d-given-v-kmh-t-min.Rmd",
             "calc-light-travel-time-from-sun.Rmd",
             "calc-d-given-v-t.Rmd",
             "calc-light-year-distance-in-miles.Rmd",
             "calc-marathon-speed-given-time.Rmd",
             "calc-marathon-time-given-pace.Rmd",
             "calc-t-given-d-v.Rmd",
             "calc-a-given-0-to-60.Rmd")
exams2pdf(my_exam, edir = "exercises",template = "templates/solution.tex", 
          header = list(Course = "Physics 11/12", Title = "Practice Test Solutions"))
# Generate different PDFs
s <- 2025*11*7
set.seed(s)
exams2pdf(my_exam, edir = "exercises", template = "templates/practice", 
          header = list(Course = "Physics 11", Title = "Dynamics Practice Test"))

set.seed(s)


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

