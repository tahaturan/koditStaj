//
//  SonucEkraniVC.swift
//  sayiTahmin_app
//
//  Created by Taha Turan on 18.04.2023.
//

import UIKit

class SonucEkraniVC: UIViewController {
    
    @IBOutlet weak var imageViewSonuc: UIImageView!
    @IBOutlet weak var sonucLabel: UILabel!
    
    let uzgunResim = UIImage(named: "uzgun_resim")
    let mutluResim = UIImage(named: "mutlu_resim")
    
    var sonuc:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        if let gelenSonuc = sonuc {
            
            if gelenSonuc {
                imageViewSonuc.image = mutluResim
                sonucLabel.text = "Kazandiniz Tebrikler"
            } else {
                imageViewSonuc.image = uzgunResim
                sonucLabel.text = "Maalesef Kaybettiniz"
            }
        }
        
    }
    

    @IBAction func tekrarButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
