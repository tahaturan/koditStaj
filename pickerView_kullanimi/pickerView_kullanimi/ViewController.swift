//
//  ViewController.swift
//  pickerView_kullanimi
//
//  Created by Taha Turan on 19.04.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var labelSonuc: UILabel!
    
    var ulkeler:[String] = []
    var secilenUlke:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["Turkiye" , "Almanya" , "Rusya" , "Japonya" , "Italya"]
        myPickerView.dataSource = self
        myPickerView.delegate = self
        labelSonuc.isHidden = true
       
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelSonuc.text = ulkeler[row]
        labelSonuc.isHidden = false
        
        secilenUlke = ulkeler[row]
    }
    
    
    
    @IBAction func gosterButton(_ sender: Any) {
        print(secilenUlke ?? "nil")
        
        
    }
    
   
    

}

