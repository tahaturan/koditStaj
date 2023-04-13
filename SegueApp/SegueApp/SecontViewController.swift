//
//  SecontViewController.swift
//  SegueApp
//
//  Created by Taha Turan on 13.04.2023.
//

import UIKit

class SecontViewController: UIViewController {
    
    @IBOutlet weak var myLabelSecontViewController: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    }
    



}
