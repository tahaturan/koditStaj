//
//  ViewController.swift
//  Outlet_Action_Kullanimi
//
//  Created by Taha Turan on 14.04.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var etiket: UILabel!
    //Outlet yapisini degisken belirtme olarak dusunebiliriz yani bizim label imiz bir degisken gibi davranacak diyoruz
   
    @IBOutlet var etiketler: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Bu metod Uygulama acildigi ilk anda calisan metod
        etiket.text = "Merhaba"
        etiketler[0].text = "Heyyy"
    
        
    }

    @IBAction func tiklan(_ sender: Any) {
        //Action ise islem yapacagimiz zamanlar da kullaniriz
        print("Butona Basildi")
        etiket.text = "Butona Basildi"

    }

    
}

