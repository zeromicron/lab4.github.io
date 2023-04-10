// Write a program that takes a list of integers as input and returns the sum of the cubes of the original numbers.

package main

import (
    "fmt"
    "math"
)

func main() {
    var num1, num2, num3 int

    fmt.Println("Введите до 3 чисел:")
    _, err := fmt.Scanln(&num1, &num2, &num3)

    if err != nil {
        fmt.Println("Ошибка чтения ввода:", err)
        return
    }

    sumOfCubes := int(math.Pow(float64(num1), 3)) + int(math.Pow(float64(num2), 3)) + int(math.Pow(float64(num3), 3))


    fmt.Printf("Сумма кубов чисел %d, %d и %d равна %d\n", num1, num2, num3, sumOfCubes)
}
