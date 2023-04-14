//
//  ViewControllerB.swift
//  Veri_Transferi_PresentModallay_kodla
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewControllerB: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var ad: UILabel!
    @IBOutlet weak var id: UILabel!
    
    var message:String? = nil
    var kisi:Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = message
        kisiBilgileri()
    }
    
    func kisiBilgileri()  {
        if let temp = kisi {
            ad.text = temp.kisiAd
            id.text = "\(temp.kisiId ?? 0)"
        }
    }

}
