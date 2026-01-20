library("exams")

quiz <- list("calc-relative-intensity-given-dB.Rmd", 
             "calc-freq-given-interval.Rmd",
             "which-does-not-describe-pitch.Rmd",
             "calc-intensity-given-dB.Rmd", 
             "calc-beat-freq.Rmd",
             "calc-two-freqs-given-beat-freq.Rmd",
             "calc-dB-given-intensity.Rmd",
             "calc-freq-given-semitones.Rmd",
             "calc-wavelength-given-harmonic-open-pipe.Rmd",
             "calc-wavelength-given-harmonic-closed-pipe.Rmd",
             "calc-pipe-length-given-interval.Rmd",
             "calc-speed-given-resonances.Rmd")

s <- 2025 * 1 * 15
name <- "ch15-quiz"

set.seed(s)
exams2moodle(quiz, edir = "exercises", dir = paste0("exams/", name))

