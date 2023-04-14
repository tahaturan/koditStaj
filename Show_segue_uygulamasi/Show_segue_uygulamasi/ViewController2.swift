//
//  ViewController2.swift
//  Show_segue_uygulamasi
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       // self.navigationItem.hidesBackButton = true
        // sayfa gecisi oldugu zaman geri tusunu gizlemek istersek
    }
    

    @IBAction func geri(_ sender: Any) {
        // navigationController?.popViewController(animated: true)
        // geri gelmesini saglayan kod
        
        navigationController?.popToRootViewController(animated: true)
        // en bastaki sayfaya gider
    }
    
    
    @IBAction func goto3(_ sender: Any) {
       /* let stroyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = stroyBoard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
        
        navigationController?.pushViewController(gidilecekViewController, animated: true) */
    }
    

}
