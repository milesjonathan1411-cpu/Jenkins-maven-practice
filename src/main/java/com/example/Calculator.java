package com.example;

public class Calculator {

    public int add(int a, int b) {
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }

    public int multiply(int a, int b) {
        return a * b;
    }

    public int divide(int a, int b) {
        if (b == 0) {
            throw new ArithmeticException("Cannot divide by zero");
        }
        return a / b;
    }

    public static void main(String[] args) {
        Calculator calc = new Calculator();
        Logger.println("2 + 3 = " + calc.add(2, 3));
        Logger.println("5 - 2 = " + calc.subtract(5, 2));
        Logger.println("4 * 3 = " + calc.multiply(4, 3));
        Logger.println("10 / 2 = " + calc.divide(10, 2));
    }
}
