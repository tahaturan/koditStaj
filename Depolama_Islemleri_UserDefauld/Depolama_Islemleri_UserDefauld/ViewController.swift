//
//  ViewController.swift
//  Depolama_Islemleri_UserDefauld
//
//  Created by Taha Turan on 25.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let d = UserDefaults.standard
        
        d.set("Taha", forKey: "ad")
        d.set(18, forKey: "yas")
        d.set(1.85, forKey: "boy")
        d.set(false, forKey: "medeniDurum")
        
        let arkadasListesi:[String] = ["Kerem" , "Ali" , "Berk"]
        
        d.set(arkadasListesi, forKey: "liste")
        
        let sehirlerListesi:[String:String] = ["16":"Bursa" , "09":"Aydin"]
        
        d.set(sehirlerListesi, forKey: "dict")
        
        //Veri Okuma
        
        let ad:String = d.string(forKey: "ad") ?? "isim yok"
        let yas:Int = d.integer(forKey: "yas")
        let boy:Double = d.double(forKey: "boy")
        let medeniDurum:Bool = d.bool(forKey: "medeniDurm")
        
        print("ad: \(ad)")
        print("yas: \(yas)")
        print("boy: \(boy)")
        print("medeni durum: \(medeniDurum)")
        
        let liste = d.array(forKey: "liste") as? [String] ?? [String]()
        
        print(liste[0])
        
        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        
        print(dict["16"]!)
        
        //d.removeObject(forKey: "ad") Silme Islemi
        
        d.set("Yeni isim", forKey: "ad") // Guncelleme Islemi
    }


}

