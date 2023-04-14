//
//  ViewController2.swift
//  Present_Modally_Uygulama
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tiklanDismiss(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func goTo3(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyBoard.instantiateViewController(identifier: "sayfa3") as! ViewController3
        
        self.present(gidilecekViewController, animated: true , completion: nil)
    }
    
}
