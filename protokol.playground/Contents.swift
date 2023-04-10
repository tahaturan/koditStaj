import UIKit

// Protokol
// Hazir taslaklar olarak dusunebiliriz
// protocoller siniflara ozellik katar

protocol Protocol1 {
    var degisken : Int { get set}
    
    func metod1()
    func metod2() -> String
    
}

class ClassA : Protocol1{
    var degisken: Int = 10
    
    func metod1() {
        print("Protocol metod 1")
    }
    
    func metod2() -> String {
        return "Protocol Calismasi"
    }
    
    
}

let degisken : ClassA = ClassA()

degisken.metod1()

print(degisken.metod2())

// Protocollersi abstact sinif olarak dusunebiliriz bi nevi soyut sinif gibi metodlari yazariz ve kullandigimiz siniflarda o metodlarin icini doldurmak zorunda oluruz

// Ornek

protocol Squeezazbla {
    func howToSqueez()
}

protocol Eatable{
    func howToEat()
}

class Aslan{
    
}

class Tavuk : Eatable{
    func howToEat() {
        print("Firinda Kizart")
    }
}

class Elma : Eatable , Squeezazbla{
    func howToEat() {
        print("Dilimle Ve Ye")
    }
    
    func howToSqueez() {
        print("Meyve Sikacagi ile suyunu cikar")
    }

    
}

class AmasyaElmasi : Elma{
    override func howToEat() {
        print("Yika Ve Ye")
    }
}

let aslan : Aslan = Aslan()
var amasyaElmasi : Elma = AmasyaElmasi()
let elma : Elma = Elma()
let tavuk : Eatable = Tavuk()

let nesneler = [aslan , amasyaElmasi , elma , tavuk] as [Any]
//Diziler icerilerindde ayni turdden verileri barindirir ykarida dizi icinddekiler ayni tur olmadigindan tip donusumu yapip any olarak ddegistirdik boylelikle hata almadik

for nesne in nesneler{
    if nesne is Eatable{
        (nesne as? Eatable)?.howToEat()
    }
    
    if nesne is Squeezazbla {
        (nesne as? Squeezazbla)?.howToSqueez()
    }
}
