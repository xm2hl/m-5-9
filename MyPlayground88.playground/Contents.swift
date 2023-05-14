import Cocoa
struct Maden {
    var xdd: String
    
}
struct Labtob {
    var name: String
    var modillap: String
    var xdd: Maden
    var color: String
    var newOrOld: Bool
    var price: Double = 0
    
    init(name: String, modillap: String, xdd: Maden, color: String, newOrOld: Bool, price: Double){
        
        self.name = name
        self.modillap = modillap
        self.xdd = xdd
        self.color = color
        self.newOrOld = newOrOld
        self.price = price
    }
}
var from: Maden = Maden(xdd: "ksa")

var brtt = Labtob(name: "lenovo", modillap: "d700", xdd: from, color: "red", newOrOld: true, price: 5600)
//
//print("1- brand_ \(brtt.name)\n2- colors_ \(brtt.color)\n3- \(brtt.xdd)\n4- New ?_ \(brtt.newOrOld)\n5- price_ \(brtt.price) RS ")

print(brtt.xdd.xdd)
