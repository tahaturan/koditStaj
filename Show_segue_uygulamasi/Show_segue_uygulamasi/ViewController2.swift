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

        // Do any additional setup after loading the view.
    }
    

    @IBAction func geri(_ sender: Any) {
        // navigationController?.popViewController(animated: true)
        // geri gelmesini saglayan kod
        
        navigationController?.popToRootViewController(animated: true)
        // en bastaki sayfaya gider
    }
    

}
