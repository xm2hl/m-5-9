import Foundation

// Create empty array of type Int
var ar1: [Int] = []

// add five values to the array
ar1 = [90,20,48,10,50]

// Use a for-in loop to iterate through the array
var ar2: [Int] = []
for m in ar1 {
    ar2.append(m + 1)
    
}
print(ar2)

// Create a dictionary with string keys and integer values
var ar3 = [1:"a",2:"b",3:"c",4:"d"]
ar3[4]
ar3[2]
print(ar3)
// Use a for-in loop to iterate through the dictionary

for gx in ar3  {
    
    print(gx)
}


// Create a while loop that counts up to 100
var loop2 = 0
while loop2 <= 100 {
   // print(loop2)
    loop2 += 1
}
print("loop2 = 100")
// Create a repeat-while loop that counts down from 10
repeat {
    loop2 -= 1
} while loop2 <= 10

print("loop2 = 10")

// Use a for-in loop to iterate through a range of numbers
for _ in 0...3 {
    print("mamdouh")
}

// Use a for-in loop to iterate through a range of numbers with a step
//: OUTPUT
/*
 0
 2
 4
 6
 8
 */
for r in 0...8 {
    print(r)
}
// Create an array of strings and use a for-in loop to print each one
var mam1: [String] = ["red","green","blue"]
for rot in mam1 {
    print(rot)
    
}


// Use a for-in loop with the enumerated() method to iterate through an array and print the index and value of each element
var grob = [1:"mamdouh",2:"talal",3:"mohammed"]
for cv in grob.enumerated() {
    print(cv)
}

/*
 Write a swift program to formulate this shape
 😃
 😃😃
 😃😃😃
 😃😃😃😃
 😃😃😃😃😃
 
 */
 
var moge = "🤭"
for sb in 0...4 {
    var smill = "🤭"
    
    print(moge)
    moge.append(smill)
}

