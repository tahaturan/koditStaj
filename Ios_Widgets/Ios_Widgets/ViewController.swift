//
//  ViewController.swift
//  Ios_Widgets
//
//  Created by Taha Turan on 18.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelWidget: UILabel!
    
    @IBOutlet weak var textFieldWidget: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonWidget(_ sender: Any) {
        if let temp = textFieldWidget.text {
            labelWidget.text = temp
        }
    }
    
}

