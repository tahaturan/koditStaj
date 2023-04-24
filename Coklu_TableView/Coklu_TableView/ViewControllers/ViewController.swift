//
//  ViewController.swift
//  Coklu_TableView
//
//  Created by Taha Turan on 24.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewUlkeler: UITableView!
    @IBOutlet weak var tableViewSehirler: UITableView!
    
    var ulkeler : [String] = []
    var sehirler: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = AplicationConstants.ulkeler
        sehirler = AplicationConstants.sehirler
        
        tableViewUlkeler.delegate = self
        tableViewUlkeler.dataSource = self
        
        tableViewSehirler.delegate = self
        tableViewSehirler.dataSource = self

    }


}



