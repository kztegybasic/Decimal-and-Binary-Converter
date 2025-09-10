# Decimal and Binary Converter

This project provides a simple Python script for converting numbers between decimal and binary formats without using built-in conversion functions (`bin()`, `int(x, 2)`, etc).

## Features

- Convert decimal integers (positive, negative, or zero) to binary string representation.
- Convert binary strings (including negative numbers) to decimal integers.
- No use of Python’s built-in conversion functions.
- Simple example usage included.

## Usage

1. **Decimal to Binary**
    ```python
    from decimal_binary_converter import decimal_to_binary

    print(decimal_to_binary(10))   # Output: 1010
    print(decimal_to_binary(-7))   # Output: -111
    print(decimal_to_binary(0))    # Output: 0
    ```

2. **Binary to Decimal**
    ```python
    from decimal_binary_converter import binary_to_decimal

    print(binary_to_decimal('1010'))   # Output: 10
    print(binary_to_decimal('-111'))   # Output: -7
    print(binary_to_decimal('0'))      # Output: 0
    ```

## Example

Run the script directly:
```bash
python decimal_binary_converter.py
```
This will print example conversions for both decimal-to-binary and binary-to-decimal.

## License

This project is open source under the MIT License.
