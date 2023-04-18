//
//  TahminEkraniVC.swift
//  sayiTahmin_app
//
//  Created by Taha Turan on 18.04.2023.
//

import UIKit

class TahminEkraniVC: UIViewController {
    
    @IBOutlet weak var kalanHakLabel: UILabel!
    @IBOutlet weak var ipUcuLabel: UILabel!
    @IBOutlet weak var girdiTextField: UITextField!
    
    var rastgeleSayi:Int?
    
    var kalanHak:Int = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        rastgeleSayi = Int.random(in: 1...100)
       

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenVeri = sender as? Bool {
            let gidilecekVC  = segue.destination as! SonucEkraniVC
            gidilecekVC.sonuc = gelenVeri
        }
    }
    
    @IBAction func tahminButton(_ sender: Any) {
        ipUcuLabel.isHidden = false
        kalanHak -= 1
        
        
        
        if let veri = girdiTextField.text {
            
            if let tahmin = Int(veri) {
                
                if kalanHak != 0 {
                    
                    if tahmin == rastgeleSayi{
                        let sonuc:Bool = true
                        
                        performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                    }
                    if tahmin > rastgeleSayi!{
                        // Azalt
                        ipUcuLabel.text = "Azalt"
                        kalanHakLabel.text = "Kalan Hak: \(kalanHak)"
                        
                    }
                    if tahmin < rastgeleSayi!{
                        //Arttir
                        ipUcuLabel.text = "Arttir"
                        kalanHakLabel.text = "Kalan Hak: \(kalanHak)"
                    }
                    
                }else{
                    
                    // Sayfa Gecisi
                    let sonuc:Bool = false
                    
                    performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                }
            }
            girdiTextField.text = ""
        }
        
    }
    

}
