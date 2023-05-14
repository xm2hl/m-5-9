import Cocoa
struct cur{
    var price: Double
    var cur: String
}
struct Coffee { // struct مخطط
    var name: String
    var source: String
    var size: Double
    var cost: cur // custom type
    var isColed: Bool
    var sufarAmount: Double = 0 // default value
    
    init(name: String, source: String, size: Double, cost: cur, isColed: Bool , sufarAmount: Double ){
        
        self.name = name
        self.source = source
        self.size = size
        self.cost = cost
        self.isColed = isColed
        self.sufarAmount = sufarAmount
    }
    
}
var latte = Coffee(name: "swiftCoffe", source: "colmbia", size: 20, cost: cur(price: 20, cur: "RS"), isColed: true, sufarAmount: 300)
print(latte.cost)

//    }
//
////    func addSugar(){
////        print("sugar added")
//    }

//
//}
// type annootation
//object from struct
//var myCoffee: Coffee = Coffee(
//    name: "spanish latte",
//    source: "brazil",
//    size: 400,
//    price: 20,
//    isColed: true)
//
//myCoffee.name
//myCoffee.isColed

// type inferenc
// var mySecondCofee = Coffee(name: "black coffee")

//struct MyStruct{
//    var msg: String
//    init(msg: String){
//        self.msg = msg
//    }
//}
