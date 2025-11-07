# Generate a randomized kinematics exam for a Physics 11 course.

# Integer used to set the seed to make randomization reproducible.
version <- 2025*7*12

# Load R/exams package
library("exams")

# Include all the questions in the kinematics folder in the exam.
my_exam <- dir(path = "exercises/kinematics")
my_exam <- sample(my_exam) # randomize

# Include only the following list of problems in the exam.
# Only one exercise from each line will be included.
# my_exam <- list(c("what_is_scalar", "what_is_vector"),
#                 "scalar_or_vector",
#                 c("which_are_scalars", "which_are_vectors"),
#                 c("what_is_distance", "what_is_displacement"),
#                 "displacement_equal_distance",
#                 "which_are_accelerating",
#                 "sign_of_vel_acc",
#                 "freefall_heavy_v_light",
#                 "slope_of_pos_t_graph",
#                 "interpret_pos_t_graph")

## Generate two versions of a PDF exam that can be scanned and graded automatically
set.seed(version)
exams2nops(my_exam, n=2,
           edir = "exercises",
           title="Kinematics Exam (Physics 11)",
           institution = "McRoberts Secondary",
           logo = "graphics/school-logo.png",
           date = "2025-09-30",
           blank = 0,
           duplex = FALSE,
           samepage = TRUE,
           dir = "output")

## Generate the solutions to the exams.
set.seed(version)
exams2pdf(my_exam, n=2,
          type="solution", template = "templates/solution.tex",
          dir = "output")
## ----------------------------------------------------------------------------------
