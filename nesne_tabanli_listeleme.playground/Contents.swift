import UIKit

// Array Ogrenci Ornegi

class Ogrenci {
    let numara: Int?
    let ad: String?
    let sinif: String?
    
    init(numara:Int , ad:String , sinif:String) {
        self.ad = ad
        self.numara = numara
        self.sinif = sinif
    }
}

var ogrenci1 = Ogrenci(numara: 100, ad: "Taha", sinif: "11F")
var ogrenci2 = Ogrenci(numara: 10, ad: "Selin", sinif: "11F")
var ogrenci3 = Ogrenci(numara: 50, ad: "Turan", sinif: "12C")
var ogrenci4 = Ogrenci(numara: 135, ad: "Ali", sinif: "10A")
var ogrenci5 = Ogrenci(numara: 123, ad: "Mehmet", sinif: "9D")


let ogrenciListesi :[Ogrenci] = [ogrenci1 , ogrenci2 , ogrenci3 , ogrenci4 , ogrenci5]

for ogrenci in ogrenciListesi{
    print("----------------")
    print("Ogrenci No:    \(ogrenci.numara ?? 0)")
    print("Ogrenci Ad:    \(ogrenci.ad ?? "")")
    print("Ogrenci Sinif: \(ogrenci.sinif ?? "")")
    
}

