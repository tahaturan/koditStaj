//
//  ViewController.swift
//  Veri_Transferi_PresentModallay_kodla
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func gonderButton(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekSayfa = storyBoard.instantiateViewController(withIdentifier: "sayfab") as? ViewControllerB
        
        if let temp = gidilecekSayfa {
            temp.message = myTextField.text
            //self.present(temp, animated: true) //Modal gecis
            temp.kisi = Kisiler(kisiId: 1, kisiAd: "Taha")
            
            self.navigationController?.pushViewController(temp, animated: true)
        }
    }
    
    
}
