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
        let alertController = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField{
            textfield in
            textfield.placeholder = "E-mail"
            textfield.keyboardType = .emailAddress
            
        }
        
        alertController.addTextField{
            textfield in
            textfield.placeholder = "Sifre"
            textfield.isSecureTextEntry = true
        }
        
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .destructive){
            action in
            
            print("Kaydedildi")
            
            var alinanEmail:String = ""
            var alinanSifre:String = ""
            
            if let eMail = alertController.textFields?[0]  {
                if let mail = eMail.text {
                    alinanEmail = mail
                }
            }
            
            if let sifre = alertController.textFields?[1] {
                if let gelenSifre = sifre.text {
                    alinanSifre = gelenSifre
                }
            }
            
            self.labelSonuc.text = "Email: \(alinanEmail) - Sifre: \(alinanSifre)"
    
        }
        alertController.addAction(kaydetAction)
        self.present(alertController, animated: true)
        
        
    }
    
    
    
    @IBAction func actionSheetGoster(_ sender: Any) {
        let sheetAlertController = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "Iptal", style: .cancel) { action in
            print("Iptal Edildi")
        }
        
        sheetAlertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Islem Tamam")
        }
        sheetAlertController.addAction(tamamAction)
        self.present(sheetAlertController, animated: true)
    }
    
}

