//
//  DetayViewController.swift
//  Ornek_Yemek_App
//
//  Created by Taha Turan on 25.04.2023.
//

import UIKit

class DetayViewController: UIViewController {
    
    @IBOutlet weak var yemekResimImageView: UIImageView!
    
    var yemek:Yemekler?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let temp = yemek {
            yemekResimImageView.image = UIImage(named: temp.yemekResimAdi!)
        }
    }
    
    @IBAction func sepetButton(_ sender: Any) {
        if let temp = yemek {
            print("\(temp.yemekAdi!) Sepete Eklendi")
        }
    }
    


}
