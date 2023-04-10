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

