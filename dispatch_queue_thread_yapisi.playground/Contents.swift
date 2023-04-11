import UIKit

// Thread ler is parcaciklaridir
// ayni anda birden fazla is yapilabilir

// asenkron gibi calistirabilriz normalde editor senkron yani sirali sekilde calisir biz asenkron islemler ile araya is parcaciklari ekleyebilriz

let queue = DispatchQueue(label: "etiket")

queue.async {
    for i in 1...10{
        print("Thread: \(i)")
    }
}

for i in 100...110{
    print(i)
}
print("-------------------")

// Thread lerin oncelikleri vardir yani hangisini once calisracak yapisini ona gore yapmaktadir
// ornek olarak onccelik vererek yazalim

let queue1 = DispatchQueue(label: "etiket1" , qos: DispatchQoS.userInitiated) // calisma onceligini buraya verdik
let queue2 = DispatchQueue(label: "etiket2" , qos: DispatchQoS.background)

queue2.async {
    for i in 1...10{
        print("A: \(i)")
    }
}

queue1.async {
    for i in 100...110{
        print("B: \(i)")
    }
}
// Not: Herzaman Onccelik Main thread dedir

// Delay yani gecikme verebiliriz

let gecikmeSaniye:DispatchTimeInterval = .seconds(2) // 2 saniyelik bir gecikme olusturacak

print(Date())

queue1.asyncAfter(deadline: .now() + gecikmeSaniye, execute: {
    print(Date())
})
