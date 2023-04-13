//
//  ViewController.swift
//  BirthDayNoteTaker
//
//  Created by Taha Turan on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        nameLabel.text = "Name: \(nameTextField.text ?? "")"
        birthdayLabel.text = "Birthday: \( birthdayTextField.text ?? "")"
    }
    

}

