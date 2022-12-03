import UIKit

var players: Set<String>  = ["Matt", "Emma", "Joe", "Will"]

players.insert("Mike")

print(players)

var mySet1: Set<Int> = [0,1,2,3,4,5,6]
var mySet2: Set<Int> = [9,8,7,6,5,4]

let unionSet: Set<Int> = mySet1.union(mySet2)

print(unionSet)

let intersectionSet: Set<Int> = mySet1.intersection(mySet2)
intersectionSet

let subtractSet: Set<Int> = mySet2.subtracting(mySet1)
subtractSet


func sayHello() {
    "Hello"
}

sayHello()

func sayHelloToUser(name: String){
    "Hello \(name)"
}
 
sayHelloToUser(name: "Matt")


