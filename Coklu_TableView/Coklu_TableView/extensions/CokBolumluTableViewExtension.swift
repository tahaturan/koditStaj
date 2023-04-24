//
//  CokBolumluTableViewExtension.swift
//  Coklu_TableView
//
//  Created by Taha Turan on 24.04.2023.
//

import Foundation
import UIKit

extension CokBolumluTableViewVC : UITableViewDelegate , UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return AplicationConstants.bolumler.count
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return AplicationConstants.bolumler[section]
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AplicationConstants.bolumVerileri[section].count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "hucreAdi", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = AplicationConstants.bolumVerileri[indexPath.section][indexPath.row]
        cell.contentConfiguration = content
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(AplicationConstants.bolumler[indexPath.section]) Bolumunden \(AplicationConstants.bolumVerileri[indexPath.section][indexPath.row]) secildi")
    }
    
}
