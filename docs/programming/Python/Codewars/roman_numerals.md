Write two functions that convert a roman numeral to and from an integer value. Multiple roman numeral values will be tested for each function.

Modern Roman numerals are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

Input range : 1 <= n < 4000

In this kata 4 should be represented as IV, NOT as IIII (the "watchmaker's four").

```python
class RomanNumerals:
    def __init__(self):
        self.map = {"symbol": ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"],
                    "value": [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]}

    @staticmethod
    def to_roman(val: int) -> str:
        roman = []
        map = {"M": 1000, "CM": 900, "D": 500, "CD": 400, "C": 100, "XC": 90, "L": 50, "XL": 40, "X": 10, "IX": 9, "V": 5, "IV": 4, "I": 1}
        for symbol in map:
            while val >= map[symbol]:
                roman.append(symbol)
                val -= map[symbol]
        return ''.join(roman)

    @staticmethod
    def from_roman(roman_num: str) -> int:
        val = 0
        map = {"M": 1000, "CM": 900, "D": 500, "CD": 400, "C": 100, "XC": 90, "L": 50, "XL": 40, "X": 10, "IX": 9, "V": 5, "IV": 4, "I": 1}
        i = 0
        while i < len(roman_num):
            if i+1 < len(roman_num) and roman_num[i:i+2] in map:
                val += map[roman_num[i:i+2]]
                i += 2
            else:
                val += map[roman_num[i]]
                i += 1
        return val

```