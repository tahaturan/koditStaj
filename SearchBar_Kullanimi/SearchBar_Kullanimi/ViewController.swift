//
//  ViewController.swift
//  SearchBar_Kullanimi
//
//  Created by Taha Turan on 25.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        
    }


}

extension ViewController: UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("arama sonuc : \(searchText)")
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Iptal")
    }
    
    
}
