import UIKit

// String Yapisi

// Tanimlama

let strA = "Merhaba"

let strB = String("Merhaba Nesne") // nesne olarak Tanimlama

let strC = """
 bu sekilde de
 coklu olarak
 sring tanimlaya biliriz
 """

let strD = String() // bos string ifade olusturma
print(strD)

print(strC)

// String ifadesinin ici dolu mu bos mu kontrolu

if strA.isEmpty{
    // bos ise true degilse false doner
    print("ici bos")
}else{
    print("ici dolu verisi ise: \(strA)")
}

// boyut bulma

print(strA.count)

// dongu ile gezinebiliriz index mantigi vardir

for harf in strA{
    print(harf , terminator: "-")
    //parcaladiktan sonra harf sonuna isaretler ekelebiliriz terminator ile
}
print("----------------")

// String Metodlari

// icerisinde veri arama

if strA.contains("Mer"){
    print("iceriyor")
}else{
    print("içermiyor")
}

var denemeStr = "karakter ekleme"

denemeStr.insert("w", at: denemeStr.index(denemeStr.startIndex , offsetBy: 4))
print(denemeStr)
// 4. index e w karakterini ekledik

denemeStr.remove(at: denemeStr.index(denemeStr.startIndex , offsetBy: 4))
print(denemeStr)



