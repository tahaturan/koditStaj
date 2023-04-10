import UIKit

// Nesnelerin Tip Donusumu

// oncelikle nesneler arasinda tip donusumu yapmak icin kalitim iliskisi olmalidir aralarinda
// donusumler Downcasting - Upcasting olarak yapilabilir
// SuperClass dan SubClass a donusum yapilirsa Downcasting islemi denir
// SubClass dan SuperClass a donusum yapilirsa Upcasting islemi denir

// 4 adet Kavramimiz bulunmakta:
// is - as - as! - as?

// is  : (Type Checking) Tip kontrolu icin kullanilir
// as  : (Upcasting) Subclass olan bir tipi SuperClass a donusturmek icin
// as! : (Force Downcasting) SuperClass i SubClass a donusturmeye zorlar eger donusmezse hata verir
// as? : (For Oprtional Downcasting) donusum sirasinda optional yani null bir geliyorsa veya donusum sirasinda basariz olursa nill degeri dondurur daha guvenli bir yapidir

// PolyMorphism ve Tip Donusumleri Ornek Calisma

class Personel{
    func iseAlindi() {
        print("Personel Mutlu")
    }
}

class Mudur : Personel{
    //Burada Personel Turunde bir nesne istedik ve boylelikle metodun kapsamini arttirdik
    func iseAl(personel:Personel) {
        personel.iseAlindi()
    }
    
    func terfiEttir(personel:Personel)  {
        if personel is Ogretmen{
            (personel as? Ogretmen)?.maasArttir()
        }else{
            print("Sadece Ogretmen Terfi Ettirebilir")
        }
    }
}

class Isci : Personel{
    
}

class Ogretmen : Personel{
    func maasArttir()  {
        print("Terfi Aldin Maas Artti")
    }
    
}

let ogretmen : Personel = Ogretmen()
let isci : Personel = Isci()
// Burada da Genel kapsam olarak Personel sinifini kulladik yani personel gibi gorun ama davranislarin subclassin gibi olsun dedik

let mudur:Mudur = Mudur()

// mudur sinifindaki metodumuz bizden Personel turunde nesne istiyordu yukaridaki isci ve ogretmen nesnelerini artik parametre olarak verebiliriz

mudur.iseAl(personel: ogretmen)
mudur.iseAl(personel: isci)

// iki nesnemizdde gorunusunde personel sinifi olarak tanimlandigi icin parametre olarak verebildik
// iste burada aslinda kapsamlari arttirarak PolyMorphism yapmis olduk

mudur.terfiEttir(personel: ogretmen)
mudur.terfiEttir(personel: isci)
