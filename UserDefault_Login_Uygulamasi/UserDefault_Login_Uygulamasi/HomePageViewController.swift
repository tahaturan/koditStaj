//
//  HomePageViewController.swift
//  UserDefault_Login_Uygulamasi
//
//  Created by Taha Turan on 25.04.2023.
//

import UIKit

class HomePageViewController: UIViewController {
    
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        let kullaniciAdi = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text = kullaniciAdi
    }
    
    @IBAction func cikisYapButton(_ sender: Any) {
        
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        exit(-1)
    }
    


}
