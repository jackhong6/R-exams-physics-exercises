library("exams")

reg_path <- "/Users/jackhong/Library/CloudStorage/OneDrive-SchoolDistrict38/2025-2026/reg-C1.csv"
scans <- "scan_jhong_2025-11-14-15-11-25.pdf"

name <- "gravity-test"
fname <- paste0(name, ".html")
sname <- paste0(name, ".rds")

nops_scan(images = scans)
scans <- "nops_scan_20251117164122.zip"
nops_fix(scans = scans)
nops_fix(scans = scans, check = "missing")
nops_fix(scans = scans, check = "schoice")
eval <- nops_eval(register = reg_path, 
                  solutions = sname,
                  scans = scans,
                  mark = FALSE,
                  file = fname)
