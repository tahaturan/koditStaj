//
//  CokBolumluTableViewVC.swift
//  Coklu_TableView
//
//  Created by Taha Turan on 24.04.2023.
//

import UIKit

class CokBolumluTableViewVC: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self

        
    }
    



}
