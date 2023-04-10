import UIKit

// Genel Sinifara eklenti yazmamizi saglar

// Ornekler

extension Double {
    var km:Double { return self * 1000.0}
    var m:Double { return self }
    var cm:Double { return self / 100.0}
    var mm:Double { return self * 1000.0}
}

print("10cm : \(10.cm) Metredir")

print("15km : \(15.km) metredir")

// bu sekildde Genel siniflara veya metodlarimizaz extencion yazarak islerimizi kolaylastirabiliriz

