//
//  ViewControllerB.swift
//  veriTransferi_StoryBoardSegue
//
//  Created by Taha Turan on 17.04.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiketB: UILabel!
    
    var mesajB:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        if let temp = mesajB {
            etiketB.text = temp
        }

    }
    

}
