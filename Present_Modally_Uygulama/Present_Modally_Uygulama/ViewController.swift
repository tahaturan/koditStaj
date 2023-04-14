//
//  ViewController.swift
//  Present_Modally_Uygulama
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goTo2(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidelecekViewController = storyBoard.instantiateViewController(identifier: "sayfa2") as! ViewController2
        
        self.present(gidelecekViewController, animated: true , completion: nil)
    }
    
}

