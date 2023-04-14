//
//  ViewController3.swift
//  Show_segue_uygulamasi
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewController3: UIViewController {
  //  let stroyBoard = UIStoryboard(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goto2(_ sender: Any) {
        
        
      /*  let gidilecekViewController = stroyBoard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
        
        navigationController?.pushViewController(gidilecekViewController, animated: true) */
    }
    
    
    @IBAction func goto1(_ sender: Any) {
        
       /* let gidilecekViewController = stroyBoard.instantiateViewController(withIdentifier: "sayfa1") as! ViewController
        
        navigationController?.pushViewController(gidilecekViewController, animated: true) */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gofrom3to1"{
            print("Sayfa 3 den sayfa 1 ye gecis oldu")
        }
        if segue.identifier == "gofrom3to2"{
            print("sayfa 3 den sayfa2 ye gecis oldu")
        }
    }
    

}
