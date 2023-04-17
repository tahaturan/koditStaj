//
//  ViewController.swift
//  tabbarController_kullanimi
//
//  Created by Taha Turan on 17.04.2023.
//

import UIKit

class ViewController: UIViewController {

    var sayac:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func arttir(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            let profileTabBarItem = tabItems[0]
            
            profileTabBarItem.badgeColor = .purple
            profileTabBarItem.badgeValue = String(sayac)
        }

        sayac += 1
        print(sayac)

    }
 
    
    @IBAction func azalt(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            let profileTabBarItem = tabItems[0]
            
            profileTabBarItem.badgeColor = .purple
            profileTabBarItem.badgeValue = String(sayac)
        }
        sayac -= 1
        print(sayac)
    }
    
}

