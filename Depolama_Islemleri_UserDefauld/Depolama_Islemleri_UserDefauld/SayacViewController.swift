//
//  SayacViewController.swift
//  Depolama_Islemleri_UserDefauld
//
//  Created by Taha Turan on 25.04.2023.
//

import UIKit

class SayacViewController: UIViewController {
    
    @IBOutlet weak var labelSayac: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let d = UserDefaults.standard
        
        var sayac = d.integer(forKey: "sayac")
        
        sayac += 1
        
        d.set(sayac, forKey: "sayac")
        
        labelSayac.text = "Sayac: \(sayac)"
    }
    



}
