import UIKit

func isMultiple (divider: Int, number: Int) -> Bool {
    if (number % divider) > 0 {
        return false
    } else {
        return true
    }
}


isMultiple(divider: 2, number: 100)

isMultiple(divider: 3, number: 99)

var newArray: [Int] = Array ()
for i in 1...100 {
    newArray.append(i)
}


for (_, value) in newArray.enumerated() {
    if (value % 2) > 0 || (value % 3) > 0 {
        newArray.remove(at: newArray.firstIndex(of: value)!)
    }
}

print (newArray)
