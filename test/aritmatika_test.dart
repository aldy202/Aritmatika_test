import 'package:aritmatika/aritmatika.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Adds two numbers', () {
    // Arrange
    Aritmatika perhitungan = Aritmatika();

    // Act
    int result = perhitungan.addNumbers(5, 7);

    // Assert
    expect(result, equals(12));
  });

  test('Checks if a number is Ganjil/Genap', () {
    // Arrange
    Aritmatika perhitungan = Aritmatika();

    // Act
    bool isOdd = perhitungan.isOdd(9);

    // Assert
    expect(isOdd, isTrue);
  });
}
