//
//  main.swift
//  Interview
//
//  Created by Aung Thiha on 10/3/2564 BE.
//

import Foundation

//Easy 1
print("1")
for i in 1...100{
    if i % 3 == 0 && i % 5 != 0 {
        print("Fizz")
    }
    else if i % 5 == 0 && i % 3 != 0 {
        print("Buzz")
    }
    else if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    }
    else {
        print(i)
    }
}

//Easy 2
print("2")
func isLeapYear(year : Int) -> Bool {
    if year % 400 == 0 {
        return true
    }
    else if year % 400 != 0 && year % 100 != 0 && year % 4 == 0 {
        return true
    }
    else {
        return true
    }
}

print("Enter Year : ", terminator: "")
if let year = readLine() {
    if let year = Int(year) {
        print("\(year) -> \(isLeapYear(year: year))")
    }
    else {
        print("Wrong Input")
    }
}

//Easy 3.1
print("3.1")
print("n : ", terminator: "")
if let count = readLine() {
    if let count = Int(count){
        for i in 1...count {
            print(String(repeating: "*", count: i))
        }

    }
}

//Easy 3.2
print("3.2")
print("n : ", terminator : "")
if let count = readLine(){
    if let count = Int(count){
        for i in 1...count {
            print(String(repeating: " ", count: count-i),terminator : "")
            print(String(repeating: "*", count: i))
        }
    }
}

//Easy 3.3
print("3.3")
print("n : ", terminator : "")
if let count = readLine(){
    if let count = Int(count){
        for i in 1...count {
            print(String(repeating: " ", count: count-i),terminator : "")
            print(String(repeating: "*", count: 1),terminator : "")
            if i == 1 {
                print("")
            }
            else {
                print(String(repeating: " ", count: (2 * (i - 1))-1), terminator : "")
                print("*")

            }
        }
    }
}

//Easy 3.4
print("3.4")
print("n : ", terminator : "")
if let count = readLine(){
    if let count = Int(count){
        var i = 1
        while i <= count {
            var k = 1
            while k < i {
                print(" ", terminator : "")
                k += 2
            }
            print("*", terminator : "")
            var j = count
            while j > i + 1 {
                print(" ", terminator : "")
                j -= 1
            }
            if i == count && i % 2 != 0 {
                print("")
            }
            else {
                print("*")
            }
            i += 2
        }

        var l = 2
        while l <= count {
            var m = count
            while m > l + 1 {
                print(" ", terminator : "")
                m -= 2
            }
            print("*", terminator : "")
            var j = 1
            if count % 2 == 0 {
                while j < l - 1{
                    print(" ", terminator : "")
                    j += 1
                }
            }
            else {
                while j < l {
                    print(" ", terminator : "")
                    j += 1
                }
            }
            print("*")
            l += 2
        }
    }
}

//Easy 3.5
print("3.5")
print("n : ", terminator : "")
if let count = readLine(){
    if let count = Int(count){
        var i = 1
        while i <= count {
            if i % 2 != 0{
                var j = count
                while j > i {
                    if j % 2 != 0 {
                        print(" ", terminator : "")
                    }
                    j -= 1
                }
                print(String(repeating: "*", count: i))
            }
            i += 1
        }

        var l = 2
        while l <= count {
            var k = count
            if count == 2 && l % 2 == 0 {
                print("*")
            } else if count != 2 && l % 2 == 0{

            } else {
                var j = 1
                while j < l {
                    if j % 2 == 0 {

                    } else {
                        print(" ", terminator : "")
                    }
                    j += 1
                    k -= 1
                }
                if count % 2 == 0 {
                    print(String(repeating: "*", count: k-1))
                } else {
                    print(String(repeating: "*", count: k))
                }
            }
            l += 1
        }
    }
}

// Easy 3.6
print("3.6")
print("n : ", terminator : "")
if let count = readLine(){
    if let position = Int(count){

        let rows = position + (position-1)
        var i = 1
        while i <= rows {
            if i % 2 == 0 {

            } else {
                var j = rows
                while j > i {
                    if j % 2 == 0{

                    } else {
                        print("A", terminator : "")
                    }
                    j -= 1
                }
                if i == 1 {
                    print("+", terminator : "")
                } else {
                    print("+", terminator : "")
                    print(String(repeating: "E", count: i-2), terminator : "")
                    print("+", terminator : "")
                }
                var k = rows
                while k > i {
                    if k % 2 == 0 {

                    } else {
                        print("B", terminator : "")
                    }
                    k -= 1
                }
                print("")
            }
            i += 1
        }

        var l = 3
        while l <= rows {
            if l % 2 == 0 {

            } else {
                var j = 1
                while j < l {
                    if j % 2 == 0 {

                    } else {
                        print("C", terminator : "")
                    }
                    j += 1
                }
                var m = rows - 1
                if l == rows {
                    print("+", terminator : "")
                } else {
                    print("+", terminator : "")
                    print(String(repeating: "E", count: m-l), terminator : "")
                    print("+", terminator : "")
                    m -= 1
                }
                var k = 1
                while k < l {
                    if k % 2 == 0 {

                    } else {
                        print("D", terminator : "")
                    }
                    k += 1
                }
                print("")
            }
            l += 1
        }
    }
}

func isPrime(number : Int) -> Bool {
    if number < 2 {
        return false
    } else if number == 2 || number == 3 {
        return true
    } else if number % 2 == 0 || number % 3 == 0 {
        return false
    } else {
        return true
    }
}

print("Medium")
print("Enter number that you want to prime check : ", terminator : "")
if let number = readLine(){
    if let number = Int(number) {
        var i = 0
        print(" \(number) -> ", terminator : "")
        
        while i < number {
            if isPrime(number: i) {
                print(i , terminator : " ")
            }
            else {
                
            }
            
            i += 1
        }
        print()
    }
}

