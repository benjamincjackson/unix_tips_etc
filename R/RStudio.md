set wd to directory of script in RStudio

```
setwd(dirname(rstudioapi::getSourceEditorContext()$path))
```
