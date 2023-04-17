//
//  ViewControllerC.swift
//  veriTransferi_StoryBoardSegue
//
//  Created by Taha Turan on 17.04.2023.
//

import UIKit

class ViewControllerC: UIViewController {

    
    @IBOutlet weak var etiketC: UILabel!
    
    var mesajC:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let temp = mesajC {
            etiketC.text = temp
        }

    }
    



}
