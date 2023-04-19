//
//  ViewController.swift
//  tableView_calismaYapisi
//
//  Created by Taha Turan on 19.04.2023.
//

import UIKit

class ViewController: UIViewController  {

    
    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["Turkiye" , "Italya" , "Almanya" , "Japonya" , "Rusya" , "Fransa" , "Misir"]
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}





extension ViewController:  UITableViewDelegate , UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = ulkeler[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("secilen ulke: \(ulkeler[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .normal, title: "Sil", handler: {
            (contexualAction , view , boolValue) in
            print("\(self.ulkeler[indexPath.row]) yi sil")
        })
        
        let duzenleAction = UIContextualAction(style: .destructive, title: "Duzenle", handler: {
            (contexualAction , view , boolValue) in
            print("\(self.ulkeler[indexPath.row]) i duzenle")
        })
       return UISwipeActionsConfiguration(actions: [silAction , duzenleAction])
    }
    
}
