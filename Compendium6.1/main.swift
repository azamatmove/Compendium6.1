import Foundation

var name1 = "Aza"
var hp1 = 100
var min1Damage = 2
var max1Damage = 5
var headShot1 = 40
var healing1 = true

var name2 = "Vitkas"
var hp2 = 100
var min2Damage = 2
var max2Damage = 5
var headShot2  = 40
var healing2 = true

while hp1 > 0 || hp2 > 0 {
    sleep(1)
    
    print("\(name1) hit \(name2)")
    if (healing1) { //if healing1 == true можно так записать, просто первый вариант короче
        print("Try Lucky Number from 1 to 3")
        var luckyNumber1 = Int(readLine()!)!
        if luckyNumber1 == Int.random(in: 1...3) {
            hp2 -= headShot1
        }
        healing1 = false
        
    } else {
        print("Try a number from 1 to 3 to heal")
        var healingNumber1 = Int(readLine()!)!
        if healingNumber1 == Int.random(in: 1...3) {
            hp1 += 20
        }
        healing1 = true
    }
    
    hp2 = hp2 - Int.random(in: min1Damage...max1Damage)
    print("Statistic: ")
    
    if hp2 <= 0 {
        hp2 = 0
        print("\(name1) hp - \(hp1)")
        print("\(name2) hp - \(hp2)")
        print("\(name1) Won")
        break
    } else {
        print("\(name1) hp - \(hp1)")
        print("\(name2) hp - \(hp2)")
    }
    
    
    sleep(1)
    print()
    
    print("\(name2) hit \(name1)")
    if(healing2) {
        print("Try Lucky Number from 1 to 3")
        var luckyNumber2 = Int(readLine()!)!
        if luckyNumber2 == Int.random(in: 1...3) {
            hp1 -= headShot2
        }
        healing2 = false
    } else {
        print("Try a number from 1 to 3 to heal")
        var healingNumber2 = Int(readLine()!)!
        if healingNumber2 == Int.random(in: 1...3) {
            hp2 += 20
        }
        healing2 = true
    }
    
    hp1 = hp1 - Int.random(in: min2Damage...max2Damage)
    print("Statistic: ")
    
    if hp1 <= 0 {
        hp1 = 0
        print("\(name1) hp - \(hp1)")
        print("\(name2) hp - \(hp2)")
        print("\(name2) Won")
        break
    } else {
        print("\(name1) hp - \(hp1)")
        print("\(name2) hp - \(hp2)")
    }
    
    
    print()
}
print("Vitkas Loh")
