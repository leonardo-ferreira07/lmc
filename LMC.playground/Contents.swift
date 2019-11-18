import Foundation

// Euclides's algorithm
func eu(n1: Int, n2: Int) -> Int {
    var remain: Int = 0
    var a, b: Int
    a = n1
    b = n2
    
    while(b != 0) {
        remain = a % b
        a = b
        b = remain
    }
    return a
}


func lcm(_ numbers: [Int]) -> Int {
    if numbers.isEmpty { return 0 }
    
    var result: Int = 1
    
    for (i, _) in numbers.enumerated() {
        result = result * (numbers[i] / eu(n1: result, n2: numbers[i]))
    }
    
    return result
    
}

print(lcm([12, 18, 24]))
print(lcm([15, 25, 70]))
