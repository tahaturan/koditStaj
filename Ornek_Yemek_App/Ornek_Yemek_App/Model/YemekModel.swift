//
//  YemekModel.swift
//  Ornek_Yemek_App
//
//  Created by Taha Turan on 24.04.2023.
//

import Foundation

class Yemekler  {
    let yemekId:Int?
    let yemekAdi:String?
    let yemekResimAdi:String?
    let yemekFiyat:Double?
    
    init(yemekId: Int, yemekAdi: String, yemekResimAdi: String, yemekFiyat: Double) {
        self.yemekId = yemekId
        self.yemekAdi = yemekAdi
        self.yemekResimAdi = yemekResimAdi
        self.yemekFiyat = yemekFiyat
    }
    
    static let dummyList:[Yemekler] = [
         Yemekler(yemekId: 1, yemekAdi: "Ayran", yemekResimAdi: "ayran", yemekFiyat: 3.0),
         Yemekler(yemekId: 2, yemekAdi: "Baklava", yemekResimAdi: "baklava", yemekFiyat: 20.0),
         Yemekler(yemekId: 3, yemekAdi: "Fanta", yemekResimAdi: "fanta", yemekFiyat: 5.0),
         Yemekler(yemekId: 4, yemekAdi: "Izgara Somon", yemekResimAdi: "izgarasomon", yemekFiyat: 25.0),
         Yemekler(yemekId: 5, yemekAdi: "Izgara Tavuk", yemekResimAdi: "izgaratavuk", yemekFiyat: 15.0),
         Yemekler(yemekId: 6, yemekAdi: "Kadayıf", yemekResimAdi: "kadayif", yemekFiyat: 16.0),
         Yemekler(yemekId: 7, yemekAdi: "Kahve", yemekResimAdi: "kahve", yemekFiyat: 6.0),
         Yemekler(yemekId: 8, yemekAdi: "Köfte", yemekResimAdi: "kofte", yemekFiyat: 15.0),
         Yemekler(yemekId: 9, yemekAdi: "Lazanya", yemekResimAdi: "lazanya", yemekFiyat: 21.0),
         Yemekler(yemekId: 10, yemekAdi: "Makarna", yemekResimAdi: "makarna", yemekFiyat: 13.0),
         Yemekler(yemekId: 11, yemekAdi: "Pizza", yemekResimAdi: "pizza", yemekFiyat: 18.0),
         Yemekler(yemekId: 12, yemekAdi: "Su", yemekResimAdi: "su", yemekFiyat: 1.0),
         Yemekler(yemekId: 13, yemekAdi: "Sütlaç", yemekResimAdi: "sutlac", yemekFiyat: 10.0),
         Yemekler(yemekId: 14, yemekAdi: "Tiramisu", yemekResimAdi: "tiramisu", yemekFiyat: 16.0)
    ]
}
