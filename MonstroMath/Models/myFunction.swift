import Foundation

protocol myFunc {
    func firstNum (a: Int) -> Int
    func secondNum (a: Int) -> Int
    func sum (a: Int, b: Int) -> Int
    func substr (a: Int, b: Int) -> Int
    func findC (a: Int, b: Int) -> Int
    
}
func firstNum (a: Int) -> Int {
    return a/10
}
func secondNum (a: Int) -> Int {
    return a%10
}

func findC (a: Int, b: Int) -> Int {
    return a * b
}
func sum (a: Int, b: Int) -> Int {
    return a + b
}

func substr (a: Int, b: Int) -> Int {
    return a - b
}
