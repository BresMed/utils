# AA_repository_template

Repository template created by Advanced Analytics. To create a new repository based off this repository click the green 'Use this template' button on the top right of the repository. Then create a repository with a unique repository name, select **private** and do **not** tick the all branches button

## Project Organization

Show the project structure here, overwriting the default as necessary.

------------------------

```
├── data
│   ├── processed      <- Processed, cleaned data - likely not used here.
│   └── raw            <- Original, raw data - for where data is publicly available but not conveniently loaded.
│
├── docs               <- Documentation for internal use
├── outputs            <- Generated outputs (reports, figures, etc)
│
├── report             <- Write up for external use. Rmarkdown files, bibtex etc.. include templates if not in BresMed package.
│
├── src                <- Source code for use in this project, all functions.
│  └── utils           <- Generic utility functions, create folders for other types of functions
│
├── tests              <- Tests for this project - e.g. testthat.
│
├── app_files          <- Folder for Shiny App content, includes file app.R.
│  └── UI              <- folder with UI content.
│  └── server          <- folder containing server file.
│  └── www             <- other content.
├──.github 
│  └── UI              <- contains all workflows for github actions.
│
├── .gitignore
├── LICENSE
└── README.md          <- Top-level README
```

### List of contributors
- [Example](example@bresmed.com)
- Template owner: [RobertASmith](rsmith@bresmed.com)
