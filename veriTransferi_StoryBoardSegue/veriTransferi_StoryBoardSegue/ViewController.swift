//
//  ViewController.swift
//  veriTransferi_StoryBoardSegue
//
//  Created by Taha Turan on 17.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var girdiAlani: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var gidilecekMesaj = ""
        
        if let temp = girdiAlani.text {
             gidilecekMesaj = temp
        }
        
        
        if segue.identifier == "aTob"{
            print("A dan B ye Gecis")
            
            let gidilecekVC = segue.destination as! ViewControllerB
            
            gidilecekVC.mesajB = gidilecekMesaj
        }
        
        if segue.identifier == "aToc"{
            print("A dan C ye Gecis")
            
            let gidilecekVC = segue.destination as! ViewControllerC
            
            gidilecekVC.mesajC = gidilecekMesaj

        }
    }


}

