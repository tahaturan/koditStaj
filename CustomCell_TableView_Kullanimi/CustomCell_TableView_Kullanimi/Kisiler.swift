//
//  Kisiler.swift
//  CustomCell_TableView_Kullanimi
//
//  Created by Taha Turan on 24.04.2023.
//

import Foundation

class Kisiler {
    let kisiId:Int?
    let kisiAd:String?
    let kisiTel:String?
    
    init(kisiId: Int, kisiAd: String, kisiTel: String) {
        self.kisiId = kisiId
        self.kisiAd = kisiAd
        self.kisiTel = kisiTel
    }
}
