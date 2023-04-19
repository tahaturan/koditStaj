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
    var timePicker:UIDatePicker?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //DatePicker
        datePickerShow()
        //TimePicker
        timePickerShow()

    }
    
    func datePickerShow()  {
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tarihTexfield.inputView = datePicker
        
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
    }
    
    func timePickerShow()  {
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        saatTextfield.inputView = timePicker
        timePicker?.addTarget(self, action: #selector(self.saatGoster(datePicker:)), for: .valueChanged)
    }
    
    @objc func tarihGoster(datePicker:UIDatePicker)  {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "MM/dd/yyyy"
        let alinanTarih = dateFormater.string(from: datePicker.date)
        tarihTexfield.text = alinanTarih
        
        view.endEditing(true)
      }
      
     @objc func saatGoster(datePicker:UIDatePicker)  {
         let dateFormater = DateFormatter()
         dateFormater.dateFormat = "hh:mm"
         let alinanSaat = dateFormater.string(from: datePicker.date)
         saatTextfield.text = alinanSaat
      
      }


}

