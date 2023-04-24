//
//  mainViewControllerExtension.swift
//  Coklu_TableView
//
//  Created by Taha Turan on 24.04.2023.
//

import Foundation
import UIKit



extension ViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var veriSayisi:Int?
        if tableView == tableViewUlkeler{
            veriSayisi = ulkeler.count
        }
        
        if tableView == tableViewSehirler {
            veriSayisi = sehirler.count
        }
        
        return veriSayisi ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if tableView == tableViewUlkeler {
            cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = ulkeler[indexPath.row]
            cell.contentConfiguration = content
        }
        
        if tableView == tableViewSehirler{
            cell = tableView.dequeueReusableCell(withIdentifier: "sehirlerHucre", for: indexPath)
            
            var content = cell.defaultContentConfiguration()
            content.text = sehirler[indexPath.row]
            cell.contentConfiguration = content
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tableViewUlkeler{
            print("\(ulkeler[indexPath.row]) secildi")
        }
        
        if tableView == tableViewSehirler {
            print("\(sehirler[indexPath.row]) secildi")
        }
    }
    
    
}
