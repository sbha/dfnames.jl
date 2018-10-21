# dfnames.jl
## Overview
Functions for working with data frame names. 
  
* Convert data frame name formats to snake_case, PaschalCase, camelCase, or Title Case. 
* Print data frame names in the console in an easy to copy and paste format. 

## Usage
Convert data frame names to snake_case:
```julia
rename!(x -> Symbol(snake_caser(string(x))), df)
```
