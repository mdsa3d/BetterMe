# Get all the neccessary packages in a project

```bash
pip install pipreqs
pipreqs --print /home/project/location
```

To split the dependency tree into different files (e.g. base, test, dev, docs) and have a way of managing the dependency tree, 
use `pip-compile-multi`.

***Sophisticated version manager***
`pyvenv` -> https://github.com/pyenv/pyenv 
It wraps `virtualenv` producing some improvements over the version specification that is created by `pipreqs`.
