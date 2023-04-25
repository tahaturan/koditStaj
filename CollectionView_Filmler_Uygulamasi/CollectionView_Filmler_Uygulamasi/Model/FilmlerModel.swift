//
//  FilmlerModel.swift
//  CollectionView_Filmler_Uygulamasi
//
//  Created by Taha Turan on 25.04.2023.
//

import Foundation

class Filmler {
    let filmId:Int?
    let filmBaslik:String?
    let filmResimAdi:String?
    let filmFiyat:Double?
    
    init(filmId: Int, filmBaslik: String, filmResimAdi: String, filmFiyat: Double) {
        self.filmId = filmId
        self.filmBaslik = filmBaslik
        self.filmResimAdi = filmResimAdi
        self.filmFiyat = filmFiyat
    }
    
    static let dummyList:[Filmler] = [
        Filmler(filmId: 1, filmBaslik: "Django", filmResimAdi: "django", filmFiyat: 15.99),
        Filmler(filmId: 2, filmBaslik: "Inception", filmResimAdi: "inception", filmFiyat: 15.99),
        Filmler(filmId: 3, filmBaslik: "Interstellar", filmResimAdi: "interstellar", filmFiyat: 15.99),
        Filmler(filmId: 4, filmBaslik: "Anadoluda", filmResimAdi: "birzamanlaranadoluda", filmFiyat: 15.99),
        Filmler(filmId: 5, filmBaslik: "The Hateful Eight ", filmResimAdi: "thehatefuleight", filmFiyat: 15.99),
        Filmler(filmId: 6, filmBaslik: "The Pianist", filmResimAdi: "thepianist", filmFiyat: 15.99)
    ]
}
