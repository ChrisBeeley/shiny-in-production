## code to prepare `jane_eyre` dataset goes here

book <- gutenbergr::gutenberg_download(1260, mirror = "http://mirrors.xmission.com/gutenberg/")

jane_eyre <- book$text

usethis::use_data(jane_eyre, overwrite = TRUE)
