//
//  PickerViewAndTextfieldVC.swift
//  pickerView_kullanimi
//
//  Created by Taha Turan on 19.04.2023.
//

import UIKit

class PickerViewAndTextfieldVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var textFieldUlke: UITextField!
    
    var picerView:UIPickerView?
    var ulkeler:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["","Tukiye" , "Almanya" , "Italya", "Japonya"]
        
        picerView = UIPickerView()
        picerView?.delegate = self
        picerView?.dataSource = self
        
        textFieldUlke.inputView = picerView
        
        let toolBar = UIToolbar()
        toolBar.tintColor = .gray
        toolBar.sizeToFit()
        
        let tamamButton = UIBarButtonItem(title: "Tamam", style: .done, target: self, action: #selector(self.tamamTikla))
        let bosluk = UIBarButtonItem(systemItem: .flexibleSpace)
        let iptalButton = UIBarButtonItem(title: "Iptal", style: .plain, target: self, action: #selector(self.iptalTikla))
        
        toolBar.setItems([iptalButton , bosluk, tamamButton], animated: true)
        textFieldUlke.inputAccessoryView = toolBar
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        ulkeler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textFieldUlke.text = ulkeler[row]
    }

    
   @objc func tamamTikla()  {
       textFieldUlke.text = ""
     
       view.endEditing(true)
    }
    
   @objc func iptalTikla()  {
       textFieldUlke.text = ""
    
       view.endEditing(true)
    }


}
