//
//  ViewController.swift
//  toolBar_Kullanimi
//
//  Created by Taha Turan on 18.04.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var etiket: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func geriButton(_ sender: Any) {
        etiket.text = "Geri"
    }
    
    
    @IBAction func oynatButton(_ sender: Any) {
        etiket.text = "Oynat"
    }
    
    
    @IBAction func ileriButton(_ sender: Any) {
        etiket.text = "Ileri"
    }
    
}

