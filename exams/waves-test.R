library("exams")

exm <- list(c("units-hertz.Rmd", "units-of-frequency.Rmd"),
            c("defn-freq.Rmd", "defn-wavelength.Rmd"),
            c("defn-diffraction.Rmd", "defn-refraction.Rmd"),
            "defn-nodes.Rmd",
            c("changes-when-speed-decreases.Rmd", "changes-when-speed-increases.Rmd"),
            "wave-speed-depends-on.Rmd",
            "which-does-not-describe-pitch.Rmd",
            "increases-more-to-less-dense.Rmd",
            "unchanged-across-boundary.Rmd",
            "calc-beat-freq.Rmd",
            "calc-two-freqs-given-beat-freq.Rmd",
            "calc-dB-given-intensity.Rmd",
            "calc-intensity-given-dB.Rmd",
            "calc-relative-intensity-given-dB.Rmd",
            "calc-distance-using-sonar.Rmd",
            c("calc-doppler-freq-approaching-observer.Rmd", "calc-doppler-freq-receding-observer.Rmd"),
            c("calc-doppler-freq-approaching-source.Rmd", "calc-doppler-freq-receding-source.Rmd"),
            "calc-freq-given-interval.Rmd",
            "calc-freq-given-semitones.Rmd",
            c("calc-freq-given-period.Rmd","calc-period-given-freq.Rmd"),
            "calc-speed-given-freq-wavelength.Rmd",
            c("calc-freq-given-speed-wavelength.Rmd", "calc-wavelength-given-speed-freq.Rmd"),
            c("calc-speed-given-harmonic-freq.Rmd","calc-speed-given-resonances.Rmd"),
            "calc-pipe-length-given-interval.Rmd",
            c("calc-wavelength-given-harmonic-closed-pipe.Rmd", "calc-wavelength-given-harmonic-open-pipe.Rmd"))

name <- "waves-test"
s <- 2025*1*22

set.seed(s)
exams2nops(exm, n = 4, date = as.Date("2025-01-22"), edir = "exercises", title = "Waves Unit Test", 
           course = "Physics 11", institution = "McRoberts Secondary", logo = "graphics/school-logo.png", 
           blank = 0, samepage = TRUE, dir = paste0("exams/", name), name = name, helvet = TRUE,
           usepackage = c("sansmathfonts"))

set.seed(s)
exams2pdf(exm, n = 4, edir = "exercises", template = "templates/solution.tex", 
          header = list(Course = "Physics 11", Title = "Waves Unit Test Solutions"),
          dir = paste0("exams/", name), name = paste(name, "solutions", sep= "-"))

