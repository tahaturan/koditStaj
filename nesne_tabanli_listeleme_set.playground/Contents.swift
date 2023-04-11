import UIKit

// Nesne tabanli Listeleme Set
// Ornek Ogrenci Uygulamasi


class Ogrenci : Equatable , Hashable{
    // Burada nesnelerin ne ile ayrilacagini yani ne ile kiyaslanacagini belirtmek icin protocoller ekledik
    // ve o protocollerin zorunlu kildigi fonksiyonlari yazdik
    
    let numara:Int?
    let ad:String?
    let sinif:String?
    
    init(numara:Int , ad:String , sinif:String) {
        self.numara = numara
        self.ad = ad
        self.sinif = sinif
    }
    
    var hashValue: Int{
        get{
            return numara.hashValue
            // numaraya gore kiyaslanmasini istedik
        }
    }
    static func == (lhs: Ogrenci, rhs: Ogrenci) -> Bool {
        return lhs.numara == rhs.numara
        // Burada da numaralar eger esitse bu nesneler aynidir ifadesini yazdik
    }
    
    func bilgiAl()  {
        print("-------------------------")
        print("Numara : \(numara ?? 0)")
        print("Ad     : \(ad ?? "")")
        print("Sinif  : \(sinif ?? "")")
    }
}

let ogrenci1 = Ogrenci(numara: 100, ad: "Taha", sinif: "12A")
let ogrenci2 = Ogrenci(numara: 140, ad: "Selin", sinif: "12A")
let ogrenci3 = Ogrenci(numara: 110, ad: "Turan", sinif: "11B")
let ogrenci4 = Ogrenci(numara: 100, ad: "Muhammed", sinif: "10C")

var ogrenciListesi = Set <Ogrenci>()
// burada ilk olarak bir hata bunun sebebi class larda esitleme yapamamasi set ler ayni turde verileri barindirmazlar cunku

ogrenciListesi.insert(ogrenci1)
ogrenciListesi.insert(ogrenci2)
ogrenciListesi.insert(ogrenci3)
ogrenciListesi.insert(ogrenci4)

for o in ogrenciListesi{
    o.bilgiAl()
}


// boylelikle Numarlari ayni olan nesnelerdden saddecce 1 tanesi aldi
