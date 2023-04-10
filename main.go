// Write a program that takes a list of integers as input and returns the sum of the cubes of the original numbers.

package main

import "fmt"

func main() {

    var input int
    fmt.Println("Введите число:")
    fmt.Scanln(&input)


    sum := 0
    for i := 1; i <= input; i++ {
        sum += i * i * i
    }

    fmt.Printf("Сумма кубов чисел равна", input, sum)
}
