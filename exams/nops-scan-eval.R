library("exams")

reg_path <- "/Users/jackhong/Library/CloudStorage/OneDrive-SchoolDistrict38/2025-2026/reg-D1.csv"
img_path <- "/Users/jackhong/Library/CloudStorage/OneDrive-SchoolDistrict38/Physics/Physics 11/Unit 1 Kinematics/kinematics-retest-2/scan_jhong_2025-11-07-15-11-10.pdf"

name <- "kinematics-retest-2"
fname <- paste0(name, ".html")
sname <- paste0(name, ".rds")


nops_scan(images = img_path)
scans <- "nops_scan_20251107193849.zip"
nops_fix(scans = scans)
nops_fix(scans = scans, check = "missing")
nops_fix(scans = scans, check = "schoice")
eval <- nops_eval(register = reg_path, 
                  solutions = sname,
                  scans = scans,
                  mark = FALSE,
                  file = fname)
