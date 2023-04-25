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
        
        let alert = UIAlertController(title: "Uyari", message: "Cikis Yapmak Istediginize Emin misiniz?", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "Tamam", style: .default) { UIAlertAction in
            self.d.removeObject(forKey: "kullaniciAdi")
            self.d.removeObject(forKey: "sifre")
            
            exit(-1)
        }
        
        let cancelButton = UIAlertAction(title: "Iptal", style: .cancel)
        
        alert.addAction(okButton)
        alert.addAction(cancelButton)
        
        self.present(alert, animated: true)
    }
    


}
