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
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let myName = storedName as? String {
            nameLabel.text = "Name: \(myName)"
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text, forKey: "birthday")
        
        
        nameLabel.text = "Name: \(nameTextField.text ?? "")"
        birthdayLabel.text = "Birthday: \( birthdayTextField.text ?? "")"
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if storedName is String {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if(storedBirthday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "BirthDay: "
        }
    }
    
    

}

