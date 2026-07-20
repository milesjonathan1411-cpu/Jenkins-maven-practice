package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class CalculatorTest {

    private final Calculator calculator = new Calculator();

    @Test
    void testAdd() {
        assertEquals(5, calculator.add(2, 3));
    }

    @Test
    void testSubtract() {
        assertEquals(3, calculator.subtract(5, 2));
    }

    @Test
    void testMultiply() {
        assertEquals(12, calculator.multiply(4, 3));
    }

    @Test
    void testDivide() {
        assertEquals(5, calculator.divide(10, 2));
    }

    @Test
    void testDivideByZeroThrowsException() {
        assertThrows(ArithmeticException.class, () -> calculator.divide(10, 0));
    }
}
