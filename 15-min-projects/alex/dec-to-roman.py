def roman_numeral_data(n, rn):
    return list(zip(list(str(n)), rn))

rn = [("I", "V"), ("X", "L"), ("C", "D"), ("M", "¬")]
result = ''
num = 1920 # Change this to the number you want to use.

# 2. Return roman numeral.
def make_roman_char(n, t):
    if int(n) == '5':
        return t[1]                          # V
    elif int(n) > 5:
        return ((int(n) - 5) * t[0]) + t[1] # VI, VII, VIII, or vIIII.
    elif int(n) == 0:
        return ""                            # ""
    else:
        return int(n) * t[0]                      # I, II, III, or IIII.

for item in roman_numeral_data(num, rn):
    result += make_roman_char(item[0], item[1])
print (result[::-1]) # reverse the string back. [::-1]```
