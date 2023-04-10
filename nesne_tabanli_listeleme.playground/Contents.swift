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
print("---------------------------")
// Array sort()

class Kisiler{
    let kisiNo:Int?
    let kisiAd:String?
    
    init(kisino:Int , kisiAd:String) {
        self.kisiNo = kisino
        self.kisiAd = kisiAd
    }
}

let kisi1 = Kisiler(kisino: 1, kisiAd: "Taha")
let kisi2 = Kisiler(kisino: 2, kisiAd: "Selin")
let kisi3 = Kisiler(kisino: 3, kisiAd: "Turan")

let kisilerArray: [Kisiler] = [kisi1, kisi2 , kisi3]

print("Once")

for k in kisilerArray{
    print("\(k.kisiNo ?? 0) - \(k.kisiAd ?? "")")
}

print("Sayisal Buyukten Kucuge")

let siralama1 = kisilerArray.sorted(by: {$0.kisiNo! > $1.kisiNo!})

for k in siralama1{
    print("\(k.kisiNo ?? 0) - \(k.kisiAd ?? "")")
}

print("Sayisal Kucukten Buyuge")

let siralama2 = kisilerArray.sorted(by: {$0.kisiNo! < $1.kisiNo!})

for k in siralama2{
    print("\(k.kisiNo ?? 0) - \(k.kisiAd ?? "")")
}

print("Harfsel olarak Kucukten Buyuge")

let siralama3 = kisilerArray.sorted(by: {$0.kisiAd! > $1.kisiAd!})

for k in siralama3{
    print("\(k.kisiNo ?? 0) - \(k.kisiAd ?? "")")

}
 print("Harfsel olarak Buyukten Kucuge")
 
let siralama4 = kisilerArray.sorted(by: {$0.kisiAd! < $1.kisiAd!})

for k in siralama4{
    print("\(k.kisiNo ?? 0) - \(k.kisiAd ?? "")")

}
print("-------------------------")

// composition

class Adres{
    let il:String?
    let ilce:String?
    
    init(il:String , ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

class Personel{
    let personelNo:Int?
    let personelIsim:String?
    let personelAdres:Adres?
    
    init(personelNo:Int , personelIsim:String , personelAdres:Adres) {
        self.personelNo = personelNo
        self.personelIsim = personelIsim
        self.personelAdres = personelAdres
    }
}

let adres1 : Adres = Adres(il: "Aydin", ilce: "Soke")
let adres2 : Adres = Adres(il: "Denizli", ilce: "Pamukkale")
let adres3 : Adres = Adres(il: "Izmir", ilce: "Bornova")


let personel1:Personel = Personel(personelNo: 110, personelIsim: "Taha", personelAdres: adres1)
let personel2:Personel = Personel(personelNo: 140, personelIsim: "Selin", personelAdres: adres2)
let personel3:Personel = Personel(personelNo: 410, personelIsim: "Turan", personelAdres: adres3)

let personelListesi:[Personel] = [personel1 , personel2 , personel3]

for personel in personelListesi{
    print("---------------------------")
    print("Personel No: \(personel.personelNo ?? 0)")
    print("Personel Adi: \(personel.personelIsim ?? "")")
    print("Personelin Adresi")
    print("Personel Il: \(personel.personelAdres?.il ?? "")")
    print("Personel Ilce: \(personel.personelAdres?.ilce ?? "")")
          }


