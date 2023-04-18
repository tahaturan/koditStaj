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
    
    @IBOutlet weak var textViewWidget: UITextView!
    //textview widget label gibi calisir fakat daha uzun satirda yazilari tutabilir uzerine uzun basltigi zaman yazilari buyuk gormek icin buyutec cikar kopyalama ve yapistirma icinde uzun basiltiginda secenekler cikar
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonWidget(_ sender: Any) {
        if let temp = textFieldWidget.text {
            labelWidget.text = temp
            textViewWidget.text = temp
        }
    }
    
}

