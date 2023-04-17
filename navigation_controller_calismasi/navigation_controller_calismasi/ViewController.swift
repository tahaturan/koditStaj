//
//  ViewController.swift
//  navigation_controller_calismasi
//
//  Created by Taha Turan on 17.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       /* self.navigationItem.title = "baslik Kod Ile"
        
        self.navigationItem.prompt = "aciklama Kod ile"
        self.navigationItem.largeTitleDisplayMode = .automatic */
        let resim  = UIImage(named: "navBaslik")
        
        self.navigationItem.titleView = UIImageView(image: resim)
    }


}

