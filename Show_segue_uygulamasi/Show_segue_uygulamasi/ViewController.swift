//
//  ViewController.swift
//  Show_segue_uygulamasi
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goto2(_ sender: Any) {
        
       /* let stroyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = stroyBoard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
        
        navigationController?.pushViewController(gidilecekViewController, animated: true) */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("sayfa 1 den sayfa 2 ye gecis oldu")
        if segue.identifier == "gofrom1to2"{
            print("Sayfa 1 den Sayfa 2 ye gecis oldu")
        }
    }
    
}

