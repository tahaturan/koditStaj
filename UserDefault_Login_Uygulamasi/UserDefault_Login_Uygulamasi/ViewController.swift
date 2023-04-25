//
//  ViewController.swift
//  UserDefault_Login_Uygulamasi
//
//  Created by Taha Turan on 25.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldKullaniciAdi: UITextField!
    
    @IBOutlet weak var textFieldSifre: UITextField!
    
    let d = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let kullaniciAdi = d.string(forKey: "kullaniciAdi") ?? "bos"
        let sifre = d.string(forKey: "sifre") ?? "bos"
        
        if kullaniciAdi != "bos" && sifre != "bos"{
            performSegue(withIdentifier: "girisToHomePage", sender: nil)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }

    @IBAction func girisYapButton(_ sender: Any) {
        
        if let ka = textFieldKullaniciAdi.text , let s = textFieldSifre.text {
            if ka == "admin" && s == "123456"{
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre")
                performSegue(withIdentifier: "girisToHomePage", sender: nil)
            }else{
                print("Hatali Giris")
            }
        }
    }
    
}

