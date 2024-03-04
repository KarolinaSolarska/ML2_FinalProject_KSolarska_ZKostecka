# ############################################################################
#           University of Warsaw, Faculty of Economic Sciences               #
#                                                                            #
#             Karolina Solarska, Zuzanna Kostecka                            #
#                        Machine Learning 2                                  #
#                          Classification                                    #
#                                                                            #
# ############################################################################

# 1. RENDERING of Rmd files with examples into html ============================
# In this section we can render the Rmd files with R codes and all descriptions 
# into html files. 
rmarkdown::render(
  input = "scripts/ML2_Classification.Rmd",
  output_file   = "ML2_Classification.html",
  output_dir    = "html",
  encoding      = 'UTF-8'
)

# 2. PURLING Rmd files into R files ============================================
# In this section we can transform the Rmd files into R files. 
# An important part of the transformation is the `documentation` parameter.
# Value `2` will include text in the resulting `R` files as  `roxygen2` comments.
knitr::purl(input    = "scripts/ML2_Classification.Rmd",
            output   = "scripts/ML2_Classification.R",
            documentation = 2)

# 3. RENDERING of R files into html ============================================
# Having generated the R files from the Rmd files with the knitr::purl() 
# function, we can render them into html files, similarly like we rendered 
# earlier the Rmd files into them html format. In most cases, the rendered html 
# file should be identical as in case of rendering directly from Rmd into html.
rmarkdown::render(
  input = "scripts/ML2_Classification.R",
  output_file = "ML2_Classification.html",
  output_dir = "scripts",
  encoding = 'UTF-8'
)

