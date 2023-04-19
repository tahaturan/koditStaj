//
//  ViewController.swift
//  picer_yapilari
//
//  Created by Taha Turan on 19.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tarihTexfield: UITextField!
    @IBOutlet weak var saatTextfield: UITextField!
    
    var datePicker: UIDatePicker?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tarihTexfield.inputView = datePicker
        
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        
        
    }
    
  @objc func tarihGoster(datePicker:UIDatePicker)  {
      
      let dateFormater = DateFormatter()
      
      dateFormater.dateFormat = "MM/dd/yyyy"
      let alinanTarih = dateFormater.string(from: datePicker.date)
      
      tarihTexfield.text = alinanTarih
      
      view.endEditing(true)
    }


}

