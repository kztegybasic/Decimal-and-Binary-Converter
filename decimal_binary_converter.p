def decimal_to_binary(n):
    """Convert a decimal integer to binary string without using bin()."""
    if n == 0:
        return '0'
    negative = n < 0
    n = abs(n)
    bits = []
    while n > 0:
        bits.append(str(n % 2))
        n //= 2
    binary_str = ''.join(reversed(bits))
    return '-' + binary_str if negative else binary_str

def binary_to_decimal(b):
    """Convert a binary string to decimal integer without using int(x, 2)."""
    b = b.strip()
    if b.startswith('-'):
        negative = True
        b = b[1:]
    else:
        negative = False
    decimal = 0
    for digit in b:
        if digit not in '01':
            raise ValueError("Invalid binary digit: {}".format(digit))
        decimal = decimal * 2 + int(digit)
    return -decimal if negative else decimal

# Test examples
if __name__ == "__main__":
    # Decimal to binary
    print("Decimal 10 to binary:", decimal_to_binary(10))  # Output: 1010
    print("Decimal -7 to binary:", decimal_to_binary(-7))  # Output: -111
    print("Decimal 0 to binary:", decimal_to_binary(0))    # Output: 0

    # Binary to decimal
    print("Binary 1010 to decimal:", binary_to_decimal('1010'))  # Output: 10
    print("Binary -111 to decimal:", binary_to_decimal('-111'))  # Output: -7
    print("Binary 0 to decimal:", binary_to_decimal('0'))        # Output: 0
