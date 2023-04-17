//
//  ViewControllerNavBar.swift
//  navigation_controller_calismasi
//
//  Created by Taha Turan on 17.04.2023.
//

import UIKit

class ViewControllerNavBar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Baslik"
        self.navigationItem.prompt = "Aciklama"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.cyan
        appearance.titleTextAttributes = [.foregroundColor:UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor : UIColor.red]
        
        navigationController?.navigationBar.tintColor = .green
        navigationController?.navigationBar.barStyle = .default
        
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }
    

    @IBAction func buttonEkle(_ sender: Any) {
        print("Ekle Tiklandi")
    }
    

}
