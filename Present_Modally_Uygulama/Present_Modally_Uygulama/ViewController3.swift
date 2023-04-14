//
//  ViewController3.swift
//  Present_Modally_Uygulama
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func gidilecekViewController(id:String ) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyBoard.instantiateViewController(identifier: id)
        self.present(gidilecekViewController, animated: true)
        
    }
    
    @IBAction func goTo1(_ sender: Any) {
        gidilecekViewController(id: "sayfa1")
    }
    
    
    @IBAction func goTo2(_ sender: Any) {
        gidilecekViewController(id: "sayfa2")
    }
    
    
}
