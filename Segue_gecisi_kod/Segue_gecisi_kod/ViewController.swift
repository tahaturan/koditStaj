//
//  ViewController.swift
//  Segue_gecisi_kod
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func goTo2(_ sender: Any) {
        
        let kisi = Kisiler(kisiId: 1, kisiAd: "Taha")
        
        performSegue(withIdentifier: "gofrom1to2", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let gelenKisi = sender as? Kisiler
        guard let temp = gelenKisi else {
            print("null Veri")
            return
        }
        print("Gelen Kisi Id: \(gelenKisi?.kisiId ?? 0)")
        
        print("gecis 1 den 2 ye")
    }
    
}

