# Multiply numbers

```julia
module Solution
  export multiply
  multiply = *
end
```

```julia
module Solution
  export multiply
  function multiply(a, b)
    return a .* b
  end
end
```