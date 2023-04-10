import UIKit

// Parantezlerle Bir arada tutulan hazir kodlama yapilaridir
// Fonksiyonlar gibi calisan kod yapilaridir.

let ifade = {
    print("Closure Yapisi Ornek")
}

ifade()

let toplama = {
    (sayi1:Int , sayi2:Int) -> Int in
    return sayi1 + sayi2
}

let sonuc = toplama(12, 24)
print(sonuc)

// Closure Sart Yazma Ornegi

let sayilar:[Int] = [5,15,6,-8,7,55]

let siralama1 = sayilar.sorted(by: {sayi1 , sayi2 in sayi1 > sayi2})
                                //  temsili ifadeler in yapilacak is seklide yazilir
let siralama2 = sayilar.sorted(by: {n1 , n2 in n2 > n1})

print("siralama 1 : \(siralama1)")
print("siralama 2 : \(siralama2)")

// biraz daha kisatmak istersek siralama islemini

let siralama3 = sayilar.sorted(by: {$0 > $1})
// bu sekilde de yapabiliriz $0 ilk sayisi $1 ise ondan sonraki sayiyi temsil ediyor
print(siralama3)

let siralama4 = sayilar.sorted(by: <)
// bu sekilde de yapabiliriz ama bu yapi closure yapisina girmiyor
print(siralama4)
