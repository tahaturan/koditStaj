import UIKit

// Guard Kullanimi

// if yapisina benzerdir fakat sadecce OLUMSUZ durumlarda calisir if yapisinin tersi gibi dusunebiliriz
// okunabilirigi arttirir bazi durumlarda

func kisiTanima (ad:String){
    if ad == "Taha"{
        print("Merhaba \(ad)")
    }else{
        print("taninmayan Kisi")
    }
}

kisiTanima(ad: "Taha")
kisiTanima(ad: "Deneme")
print("------------------")
// Ayni ifadeyi guard ile yapalim

func kisiTanimaGuard (ad:String){
    guard ad == "Taha" else {
        print("ad Taha ya esit degil olumsuz durumda calisti burasi")
        return
        // burada return ifadasi bir sorun oldugunda yani sart saglanmadiginda metodu durdurmak icindir
    }
    //bir sorun yoksa da
    print("merhaba \(ad)")
}

kisiTanimaGuard(ad: "asdasd")
kisiTanimaGuard(ad: "Taha")
print("--------------------")

// Optional ifadelerde calisma sekli

// ilk olarak normal if let yapisi ile kontrol saglayalim
func buyukHarfYap(str:String?)  {
    if let temp = str {
        print(temp.uppercased())
        // bu kosul sagladigi taktirdik otomatik olarak nill check yapmis olur
    }else{
        print("str Nil dir")
        return // islemleri durduralim
    }
}

buyukHarfYap(str: "taha")
buyukHarfYap(str: nil)

// simdi ise guard ile yapalim

func buyukHarfYapGuard(str:String?) {
    guard let temp = str , temp.count > 0 else { return print("Nill Deger") } // sorun cikarsa mesaji versin ve fonksiyonun calismasini durdursun sorun yoksa fonksiyon diger islemlerine devam etsin
    
    print(temp.uppercased())
    
}

buyukHarfYapGuard(str: nil)

buyukHarfYapGuard(str: "deneme")

buyukHarfYapGuard(str: "")
