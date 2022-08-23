# **COnvert String to Numbers**

## **Question**
Note: This kata is inspired by Convert a Number to a String!. Try that one too.

Description
We need a function that can transform a string into a number. What ways of achieving this do you know?

Note: Don't worry, all inputs will be strings, and every string is a perfectly valid representation of an integral number.

Examples
```
"1234" --> 1234
"605"  --> 605
"1405" --> 1405
"-7" --> -7
```

## **Solution**

### ***Method 1***
```python
def string_to_number(s):
    return int(s)
```
### ***Method 2***
```python
def string_to_number(s):
    return float(s)
```

### ***Method 3***
```python
def string_to_number(s):
    # ... your code here
    try:
        return int(s)
    except (ValueError):
        return "Input is not valid " 
```

### ***Method 4***
```python
string_to_number = lambda n: int(n)
```


### ***Method 5***
```python
def string_to_number(s):
    return eval('{}'.format(s))
```