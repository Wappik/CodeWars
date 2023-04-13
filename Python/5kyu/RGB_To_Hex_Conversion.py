def convert(n):
    if n < 0:
        return "00"
    elif 0 <= n < 16:
        return f"0{hex(n)[2:].upper()}"
    elif 16 <= n < 256:
        return hex(n)[2:].upper()
    else:
        return "FF"


def rgb(r, g, b):
    return convert(r) + convert(g) + convert(b)


def tests():
    assert rgb(0, 0, 0) == "000000"
    assert rgb(1, 2, 3) == "010203"
    assert rgb(255, 255, 255) == "FFFFFF"
    assert rgb(254, 253, 252) == "FEFDFC"
    assert rgb(-20, 275, 125) == "00FF7D"
    assert rgb(255, 255, 300) == "FFFFFF"
    assert rgb(148, 0, 211) == "9400D3"

tests()




