import UIKit

//task 1
// let the equation be: 2x^2+10x+2=0

let a: Float = 2
let b: Float = 8
let c: Float = 2

func solveSquareEquation (a: Float, b: Float, c: Float) -> String {
    var xArr: [Float] = Array()
    let d = b * b - 4 * a * c
    if d < 0 {
        return ("No solution")
    } else if d == 0 {
        xArr.append((-b - sqrt(d)) / (2 * a))
    } else {
        xArr.append((-b + sqrt(d)) / (2 * a))
        xArr.append((-b - sqrt(d)) / (2 * a))
    }
    let xStr = xArr.map {String($0)}
    let xStrNew = xStr.joined(separator: ",")
    return xStrNew
}

let xArr = solveSquareEquation(a: a, b: b, c: c)
print("The solution to task 1 is: \(xArr)")


//task 2
//let the sides be: 3, 4

let aTriang: Float = 3
let bTriang: Float = 4

let cTriang: Float = sqrt (pow(aTriang, 2) + pow(bTriang, 2))

let perim = aTriang + bTriang + cTriang
let area = 0.5 * aTriang * bTriang

print("The solution to task 2 is: hypotenuse = \(cTriang), perimeter = \(perim), area = \(area)")

//task3
//В плейграунде нельзя выдавать запрос пользователю или я не нашел... Сделал в swift файле 1l_DudkaAndrey_extension

