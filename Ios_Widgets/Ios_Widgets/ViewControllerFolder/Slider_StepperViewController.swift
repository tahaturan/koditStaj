//
//  Slider_StepperViewController.swift
//  Ios_Widgets
//
//  Created by Taha Turan on 18.04.2023.
//

import UIKit

class Slider_StepperViewController: UIViewController {
    
    @IBOutlet weak var sliderDegerLabel: UILabel!
    @IBOutlet weak var sliderWidget: UISlider!
    
    @IBOutlet weak var stepperDegerLabel: UILabel!
    @IBOutlet weak var stepperWidget: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    

    @IBAction func sliderWidgetAction(_ sender: UISlider) {
        sliderDegerLabel.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepperWidgetAction(_ sender: UIStepper) {
        stepperDegerLabel.text = String(Int(sender.value))
        print(sender.value)
    }
    
}
