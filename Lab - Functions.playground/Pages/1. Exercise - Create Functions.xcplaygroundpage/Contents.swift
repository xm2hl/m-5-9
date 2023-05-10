/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself() {
    print("hi my name is mamdouh al rashidi i am 33 yers old ")
}
introduceMyself()

//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
let randomNum = Int.random(in: 0...4)
func magicEighBall() {
    
    if randomNum == 4 {
        print("number four  \(randomNum)")
        
    } else if randomNum == 3 {
        print("number three  \(randomNum)")
    } else if randomNum == 2 {
        print("number two   \(randomNum)")
    } else if randomNum == 1  {
        print("number one   \(randomNum)")
    }else if randomNum == 0 {
        print("try again  \(randomNum)")
    } else {
       // print("r\(randomNum)")
    }
}



magicEighBall()
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
