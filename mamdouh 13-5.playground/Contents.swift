enum Tablet {
    case ipad, ipadMne, ipadPro, ipadAir, ipod, tablet, notbok
}
protocol classIpone {
    func MobileCompanies() -> [String]
    func MobileCompanies2(index : Int)
}

class Electronics {
    var companyName : String
    var os : String
    var dateOfEstablishment : Int
    var madeIn : String
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String) {
        self.companyName = companyName
        self.os = os
        self.dateOfEstablishment = dateOfEstablishment
        self.madeIn = madeIn
    }
}

class PortableDevices : Electronics {
    var sim : String
    var camera : Bool
    var wifi : Bool
    var screenSize : Float
    var theNumberOfPixels : Double
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double){
        self.sim = sim
        self.camera = camera
        self.wifi = wifi
        self.screenSize = screenSize
        self.theNumberOfPixels = theNumberOfPixels
        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn)
    }
    
}

class SmartPhones : PortableDevices {
    var processorType : String
    var storageSpace : Float
     init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double, processorType: String, storageSpace: Float){
                self.processorType = processorType
                self.storageSpace = storageSpace
        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn, sim: sim, camera: camera, wifi: wifi, screenSize: screenSize, theNumberOfPixels: theNumberOfPixels)
    }
}
class TabletDevice : PortableDevices {
    var ipo : Tablet
    var processorType : String
    var storageSpace : Float
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double, ipo: Tablet, processorType: String, storageSpace: Float){
                self.ipo = ipo
                self.processorType = processorType
                self.storageSpace = storageSpace
        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn, sim: sim, camera: camera, wifi: wifi, screenSize: screenSize, theNumberOfPixels: theNumberOfPixels)
    }
}

class ApplePhone : SmartPhones {
    let chargingPort = "Lightning"
    let ModilIphone = ["13 pro","13 pro max","13 plus","14 pro","14 pro max","14 plus"]
    func MobileCompanies() -> [String] {
        return ModilIphone
    }
    func MobileCompanies2(index: Int) {
        print("index \(index) , item = \(ModilIphone[index])")
    }
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double, processorType: String, storageSpace: Float, chargingPort: String, ModilIphone: [String]){
        
        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn, sim: sim, camera: camera, wifi: wifi, screenSize: screenSize, theNumberOfPixels: theNumberOfPixels, processorType: processorType, storageSpace: storageSpace)
    }
}

var iphone = ApplePhone(companyName: "Apple", os: "IOS", dateOfEstablishment: 1976, madeIn: "USA", sim: "ALL SIM", camera: true, wifi: true, screenSize: 6.69, theNumberOfPixels: 2.3422, processorType: "A16", storageSpace: 512, chargingPort: " ", ModilIphone: [])
iphone.ModilIphone
iphone.MobileCompanies()
iphone.MobileCompanies2(index: 0)
print(iphone.companyName)

class Samsung : SmartPhones {
    let chargingPort = "USB-C"
    let GalaxyS = ["s23 ultra","s23 plus ","s23","s22 ultra","s22 plus ","s22"]
    let GalaxyZ = ["z fold4","z fold3 5G","fold"]
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double, processorType: String, storageSpace: Float, chargingPort: String, GalaxyS: [String], GalaxyZ: [String]){

        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn, sim: sim, camera: camera, wifi: wifi, screenSize: screenSize, theNumberOfPixels: theNumberOfPixels, processorType: processorType, storageSpace: storageSpace)
    }
}
var samsung = Samsung(companyName: "SAMSUNG", os: "android", dateOfEstablishment: 1969, madeIn: "South korea", sim: "ALL SIM", camera: true, wifi: true, screenSize: 7.20, theNumberOfPixels: 3.6837, processorType: "S16", storageSpace: 512, chargingPort: " ", GalaxyS: [], GalaxyZ: [])

print(samsung.GalaxyS[0])



class Huawei : SmartPhones {
    let chargingPort = "USB-C"
    let huawei = ["Mate 50","Mate 50 pro","Mate x3","Mate 30 pro","Mate 40 pro","Mate xs2"]
    var foldableScreen : Bool
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double, processorType: String, storageSpace: Float, chargingPort: String, huawei: [String], foldableScreen: Bool){
        self.foldableScreen = foldableScreen
        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn, sim: sim, camera: camera, wifi: wifi, screenSize: screenSize, theNumberOfPixels: theNumberOfPixels, processorType: processorType, storageSpace: storageSpace)
    }
}

var huawei = Huawei(companyName: "HUAWEI", os: "android", dateOfEstablishment: 1987, madeIn: "China", sim: "ALL SIM", camera: true, wifi: true, screenSize: 6.10, theNumberOfPixels: 2.434, processorType: "S10", storageSpace: 128, chargingPort: " ", huawei: [], foldableScreen: false)

print(huawei.huawei[4])

class LG : SmartPhones {
    let chargingPort = "USB-C"
    let lgMobil = ["V30 plus","LG G6","LG Q6","K10 2017","LG V SERIES"]
    var containsApen : Bool
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double, processorType: String, storageSpace: Float, chargingPort: String, lgMobil: [String], containsApen: Bool){
        self.containsApen = containsApen
        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn, sim: sim, camera: camera, wifi: wifi, screenSize: screenSize, theNumberOfPixels: theNumberOfPixels, processorType: processorType, storageSpace: storageSpace)
    }
}
var Lg = LG(companyName: "LG", os: "android", dateOfEstablishment: 2009, madeIn: "South korea", sim: "ALL SIM", camera: true, wifi: true, screenSize: 5.23, theNumberOfPixels: 2.738, processorType: "u210", storageSpace: 128, chargingPort: " ", lgMobil: [], containsApen: true)

print(Lg.companyName)

class Xiaomi : SmartPhones {
    let chargingPort = "USB-C"
    let xiaomi = ["xiaomi poco F5","xiaomi redmi note 12 pro","xiaomi redmi note 12","xiaomi redmi 12c","xiaomi 13 pro"]
    var additionalAdvantage : String
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double, processorType: String, storageSpace: Float, chargingPort: String, xiaomi: [String], additionalAdvantage: String){
        self.additionalAdvantage = additionalAdvantage
        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn, sim: sim, camera: camera, wifi: wifi, screenSize: screenSize, theNumberOfPixels: theNumberOfPixels, processorType: processorType, storageSpace: storageSpace)
    }
}
var xiaomi = Xiaomi(companyName: "Xiaomi", os: "android", dateOfEstablishment: 2010, madeIn: "China", sim: "ALL SIM", camera: true, wifi: true, screenSize: 4.23, theNumberOfPixels: 2.238, processorType: "U11", storageSpace: 128, chargingPort: " ", xiaomi: [], additionalAdvantage: "Memory port and two sim")

print(xiaomi.additionalAdvantage)


class Nokia : SmartPhones {
    let chargingPort = "USB-C"
    let nokia = ["C32","X30 5G","G60 5G","G22","C31"]
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double, processorType: String, storageSpace: Float, chargingPort: String, nokia: [String]){
        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn, sim: sim, camera: camera, wifi: wifi, screenSize: screenSize, theNumberOfPixels: theNumberOfPixels, processorType: processorType, storageSpace: storageSpace)
    }
}
var nokia = Nokia(companyName: "NOKIA", os: "Symbian", dateOfEstablishment: 1871, madeIn: "finnish", sim: "ALL SIM", camera: true, wifi: true, screenSize: 5.23, theNumberOfPixels: 3.238, processorType: "SD20", storageSpace: 512, chargingPort: " ", nokia: [])

print(nokia.dateOfEstablishment)

class Htc : SmartPhones {
    let chargingPort = "USB-C"
    let htc = ["U20 5G","U12 LIFE","U12 +"]
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double, processorType: String, storageSpace: Float, chargingPort: String, htc: [String]){
        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn, sim: sim, camera: camera, wifi: wifi, screenSize: screenSize, theNumberOfPixels: theNumberOfPixels, processorType: processorType, storageSpace: storageSpace)
    }
}
var htc = Htc(companyName: "HTC", os: "android", dateOfEstablishment: 1997, madeIn: "China", sim: "ALL SIM", camera: true, wifi: true, screenSize: 5.15, theNumberOfPixels: 3.010, processorType: "TR4", storageSpace: 512, chargingPort: " ", htc: [])

print(htc.sim)

class AppleTablet : TabletDevice {
    var price: Float
    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, sim: String, camera: Bool, wifi: Bool, screenSize: Float, theNumberOfPixels: Double, ipo: Tablet, processorType: String, storageSpace: Float, price: Float) {
        
        self.price = price
         super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn, sim: sim, camera: camera, wifi: wifi, screenSize: screenSize, theNumberOfPixels: theNumberOfPixels, ipo: ipo, processorType: processorType, storageSpace: storageSpace)
    }
}
var appleTablet = AppleTablet(companyName: "APPLE", os: "Mac os", dateOfEstablishment: 1976, madeIn: "USA", sim: " ", camera: true, wifi: true, screenSize: 13.5, theNumberOfPixels: 23.324, ipo: Tablet.ipadPro, processorType: "M1", storageSpace: 512, price: 4500)
print(appleTablet.ipo)

//class Laptop : Electronics {
//    var laptopModel : [String]
//    init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, laptopModel: [String]){
//        self.laptopModel = laptopModel
//        super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn)
//    }
//}
////    class SmartWatch : Electronics {
////        var WatchModel : [String]
////        init(companyName: String, os: String, dateOfEstablishment: Int, madeIn: String, WatchModel: [String]){
////            self.WatchModel = WatchModel
////            super.init(companyName: companyName, os: os, dateOfEstablishment: dateOfEstablishment, madeIn: madeIn)
////        }
////    }
