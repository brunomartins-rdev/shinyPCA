# Folder structure for the package

This is the folder structure for the app.

``` bash
.
├── .gitignore
├── .Rbuildignore
├── DESCRIPTION
├── dev_notes/
├── NAMESPACE
├── R/
│   ├── run_app.R
│   ├── ui.R
│   ├── server.R
│   ├── mod_welcome.R
│   ├── mod_upload.R
│   ├── mod_preprocess.R
│   ├── mod_pca.R
│   ├── mod_visuals.R
│   └── mod_export.R
├── inst/
│   └── app/
│   │   └── www/
│   │      ├── styles.css
│   │      └── custom.js
│   └── dev_notes/
│       └── folder_struct.md
├── man/
├── tests/
│   └── testthat/
├── vignettes/
│   └── using-the-app.Rmd
├── shinyPCA.Rproj
└── README.Rmd
```
