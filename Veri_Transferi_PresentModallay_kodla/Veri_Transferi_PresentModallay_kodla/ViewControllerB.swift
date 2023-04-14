//
//  ViewControllerB.swift
//  Veri_Transferi_PresentModallay_kodla
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewControllerB: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var message:String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = message
    }
    
    

}
