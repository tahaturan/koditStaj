//
//  ViewController.swift
//  SegueApp
//
//  Created by Taha Turan on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabelFirstViewController: UILabel!
    @IBOutlet weak var nameTextFiled: UITextField!
    
    var userName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad Function Called")
        nameTextFiled.text = ""
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear Function Called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear Function Called")
        nameTextFiled.text = ""
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear Function Called")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear Function Called")
    }
    
    
    
    @IBAction func nextClicked(_ sender: Any) {
        
        if let temp = nameTextFiled.text {
             userName = temp
        }
        
        performSegue(withIdentifier: "toSecontVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecontVC"{
            let destinationVC = segue.destination as? SecontViewController
            destinationVC?.myName = userName
        }
    }

}

