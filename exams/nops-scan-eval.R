library("exams")

reg_path <- "/Users/jhong/Library/CloudStorage/OneDrive-SchoolDistrict38/2025-2026/reg-D1.csv"
scans <- "scans-D.pdf"

name <- "energy-test"
fname <- paste0(name, ".html")
sname <- paste0(name, ".rds")

nops_scan(images = scans)
scans <- "nops_scan_20251203083838.zip"
nops_fix(scans = scans)
nops_fix(scans = scans, check = "missing")
nops_fix(scans = scans, check = "schoice")
eval <- nops_eval(register = reg_path, 
                  solutions = sname,
                  scans = scans,
                  mark = FALSE,
                  file = fname)
