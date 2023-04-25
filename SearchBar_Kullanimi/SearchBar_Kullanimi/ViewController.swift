//
//  ViewController.swift
//  SearchBar_Kullanimi
//
//  Created by Taha Turan on 25.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler:[String] = []
    var aramaSonucuUlkeler:[String] = []
    var aramaYapiliyorMu:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        ulkeler = ["Turkiye" , "Almanya" , "Rusya" , "Italya" , "Fransa" , "Romanya"]
        
        
    }


}

//SearchBar Extension
extension ViewController: UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("arama sonuc : \(searchText)")
        
        
        if searchText == ""{
            aramaYapiliyorMu = false
        }else{
            aramaYapiliyorMu = true
            aramaSonucuUlkeler = ulkeler.filter({$0.lowercased().contains(searchText.lowercased())})
        }
        
      
        
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    
}

//TableView Extension

extension ViewController: UITableViewDelegate , UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if aramaYapiliyorMu{
            return aramaSonucuUlkeler.count
        }else{
            return ulkeler.count
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
      
        
        if aramaYapiliyorMu {
            content.text = aramaSonucuUlkeler[indexPath.row]
            cell.contentConfiguration = content
        } else {
            content.text = ulkeler[indexPath.row]
            cell.contentConfiguration = content
        }
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if aramaYapiliyorMu {
            let secilenUlke = aramaSonucuUlkeler[indexPath.row]
            
            print("\(secilenUlke) secildi")
        } else {
            let secilenUlke = ulkeler[indexPath.row]
            
            print("\(secilenUlke) secildi")
        }
    }
}
