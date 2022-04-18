# Cheat codes (DataFrame.jl)


| Description                                       |                       Commands                        |
|:-------------------------------------------------:|:-----------------------------------------------------:|
|load csv file | <ul><li><p align="left">`CSV.read("file.csv", DataFrame; kwargs)`</p></li><li><p align="left">`CSV.read("file.csv") \| DataFrame`</p></li><ul> |
|kwargs | <ul><li><p align="left">Header</p><ul><li><p align="left">`header=0` or `header=false` auto generate column names</p></li><li><p align="left">`header=["col1", "col2"]` pass specific names</p></li><li><p align="left">`header=1:2` mulitple headers</p></li></ul></li></ul> |
|drop columns by name | <ul><li><p align="left">`select!(df, Not(:columnName))`</p></li><li><p align="left">`df[~[(x in [:B, :C]) for x in names(df)]]`</p></li><li><p align="left">`df[setdiff(names(df), [:C])]`</p></li><ul> |

