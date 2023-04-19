//
//  ViewController.swift
//  kullanici_etkilesimi
//
//  Created by Taha Turan on 19.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSonuc: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func basitAlertGoster(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "Iptal", style: .cancel){
            action in
            print("Iptal Tiklandi")
        }
        
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in
            print("Tamam Tiklandi")
        }
        
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    
    @IBAction func ozelAlertGoster(_ sender: Any) {
    }
    
    
    
    @IBAction func actionSheetGoster(_ sender: Any) {
    }
    
}

