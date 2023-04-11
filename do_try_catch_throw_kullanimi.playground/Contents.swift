import UIKit

enum Hatalar : Error{
    case sifiraBolunmeHatasi
}
// ilk olarak kendi hata sinifimizi enum olarak olusturalim hata mesajlarini buradan firlatiriz

func bolme(s1:Double , s2:Double) throws -> Double {
    if s2 == 0{
        throw Hatalar.sifiraBolunmeHatasi
    }
    return s1 / s2
    
    // Burada aslinda hatalari yonetiyoruz
}

let s1:Double = 10.0
let s2:Double = 0.0

// print(s1 \ s2) bu sekilde yaparsak derleyici direk hata verir

do {
    let sonuc = try bolme(s1: s1, s2: s2)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("sifira bolunemez")
}

let sonuc2 = try? bolme(s1: s1, s2: s2)
// do catch yapisin kullanmadan try? ile kullanirsak ve burada bir hata cikarsa geriye hata mesaji deilde nill deger doner optinal bir deger yani
// bununda kontrolunu if let ile yapabiliriz yada bir fonksiyon blogunun icindeysek guard lada yapilabilinir

if let temp = sonuc2{
    print("sonuc: \(temp)")
}else{
    print("Nil")
}
