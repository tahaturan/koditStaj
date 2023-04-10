import UIKit

// KodPit Staj 1.gun

// Kalitim inheritance

class Arac { //Super Class
    let renk:String?
    let vites:String?
    
    init(renk:String , vites:String) {
        self.renk = renk
        self.vites = vites
    }
}

class Araba:Arac{ //Sub Class
    // : isareti ile tanimlanir
    let model:String?
    let kasaTipi:String?
    
    init(model:String , kasaTipi:String , renk:String , vites:String) {
        self.model = model
        self.kasaTipi = kasaTipi
        
        super.init(renk: renk, vites: vites) // ust sinifin initini cagirdik
    }
}

let honda:Araba = Araba(model: "City", kasaTipi: "Sedan", renk: "Gri", vites: "Manuel")
// araba sinifindan bir nesne olustuturken artik bizden arac sinifinda olan parametreleri de istiyor

print(honda.model ?? "nil")
print(honda.kasaTipi ?? "nil")

let arac:Arac = Arac(renk: "kirmizi", vites: "otomatik")
// simdi ise super class dan bir nesne olusturduk ve baska bir class dan turemedigi icin bizden sadece kendisinde olan ozellikleri istedi

print(arac.renk ?? "Nil")

//NOT: Sub Class dan Super Class a erisilebilir ama Super Class dan Sub Class lara erisilemez

// Ornek Calisma

class Ev{ //Super Class
    let metreKare:Int?
    let pencereSayisi:Int?
    let bulunduguIl:String?
    
    init(metreKare:Int , pencereSayisi:Int , bulunduguIl:String) {
        self.metreKare = metreKare
        self.pencereSayisi = pencereSayisi
        self.bulunduguIl = bulunduguIl
    }
}

class Malikane : Ev{ //Sub Class Ev
    let odaSayisi:Int?
    
    init(odaSayisi:Int ,metreKare:Int, pencereSayisi:Int , bulunduguIl:String) {
        self.odaSayisi = odaSayisi
        
        super.init(metreKare: metreKare, pencereSayisi: pencereSayisi, bulunduguIl: bulunduguIl)
    }
    
    func bilgi()  {
        print(" Oda Sayisi: \(odaSayisi ?? 0)\n Metre Kare: \(self.metreKare ?? 0)\n Pencere Sayisi: \(self.pencereSayisi ?? 0)\n Il: \(self.bulunduguIl ?? "Nill")")
    }
}

class Villa:Ev{ //Sub Class Ev
    let garajVarMi:Bool?
    
    init(garajVarMi:Bool , metreKare:Int , pencereSayisi:Int , bulunduguIl:String) {
        self.garajVarMi = garajVarMi
        
        super.init(metreKare: metreKare, pencereSayisi: pencereSayisi, bulunduguIl: bulunduguIl)
    }
    
    func bilgi()  {
        print(" Garaj Var Mi: \(garajVarMi ?? false)\n Metre Kare: \(self.metreKare ?? 0)\n Pencere Sayisi: \(self.pencereSayisi ?? 0)\n Il: \(self.bulunduguIl ?? "Nill")")
    }
    
}


let malikane : Malikane = Malikane(odaSayisi: 20, metreKare: 1500, pencereSayisi: 25, bulunduguIl: "Denizli")
let villa: Villa = Villa(garajVarMi: true, metreKare: 150, pencereSayisi: 5, bulunduguIl: "Aydin")


malikane.bilgi()
print("--------")
villa.bilgi()

// Override : Uzerine Yazma
print("---------Override-------")
class Hayvan{
    func sesCikar()  {
        print("Ses Yok")
    }
}

class Memeli:Hayvan{

}
class Kedi:Memeli{
    override func sesCikar() {
        print("Miyav Miyavv")
    }
}

class Kopek:Hayvan{
    override func sesCikar() {
        print("Havv Havvv")
    }
}

let hayvan : Hayvan = Hayvan()

hayvan.sesCikar()

let kedi : Kedi = Kedi()
kedi.sesCikar()

let kopek : Kopek = Kopek()

kopek.sesCikar()

//Super Class da bulunan Metodu Degistirmek istersek override etmis oluruz ve sub class a uygun bir metod haline getirmis oluruz
