//
//  ViewController.swift
//  projectLayout
//
//  Created by Taha Turan on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width / 2 , y: height * 0.5 , width: width * 0.8, height: 50)
        view.addSubview(myLabel)
    }


}

