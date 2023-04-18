//
//  SwitchSegmentedViewController.swift
//  Ios_Widgets
//
//  Created by Taha Turan on 18.04.2023.
//

import UIKit

class SwitchSegmentedViewController: UIViewController {
    
    @IBOutlet weak var switchWidget: UISwitch!
    
    @IBOutlet weak var segmentedWidget: UISegmentedControl!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func switchChange(_ sender: UISwitch) {
        
        if sender.isOn {
            print("switch acik")
        }else{
            print("switch kapali")
        }
    }
    
    @IBAction func changeButton(_ sender: Any) {
        
        print("Switch Durum : \(switchWidget.isOn)")
        
        switch segmentedWidget.selectedSegmentIndex {
        case 0:
            print("Durum: Acik")
        case 1:
            print("Durum Kapali")
        case 2:
            print("Durum Normal")
        
        default:
            print("Default")
            
        }
       
    }
    
    
  
    @IBAction func segmentedWidgetAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            print("Segmented Acik")
        }else if sender.selectedSegmentIndex == 1 {
            print("Segemented Kapali")
        }else{
            print("Segmented Normal")
        }
    }
    

}
