//
//  ViewController.swift
//  CustomCell_TableView_Kullanimi
//
//  Created by Taha Turan on 24.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe:[Kisiler] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kisilerTableView.dataSource = self
        kisilerTableView.delegate = self
        
        let k1 = Kisiler(kisiId: 1, kisiAd: "Taha", kisiTel: "45654654")
        let k2 = Kisiler(kisiId: 2, kisiAd: "Muhammed", kisiTel: "564564")
        let k3 = Kisiler(kisiId: 3, kisiAd: "Ali", kisiTel: "9456464")
        let k4 = Kisiler(kisiId: 4, kisiAd: "Berk", kisiTel: "546546")
        let k5 = Kisiler(kisiId: 5, kisiAd: "Gamze", kisiTel: "231646")
        let k6 = Kisiler(kisiId: 6, kisiAd: "Gozde", kisiTel: "65484564")
        let k7 = Kisiler(kisiId: 7, kisiAd: "Kerem", kisiTel: "56456484")
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)
        kisilerListe.append(k5)
        kisilerListe.append(k6)
        
    }


}


extension ViewController : UITableViewDelegate , UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let gelenKisi = kisilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre
        
        cell.kisiAdLabel.text = "\(gelenKisi.kisiAd ?? "") - \(gelenKisi.kisiTel ?? "")"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gelenKisi = kisilerListe[indexPath.row]
        
        print("Gelen Kisi Id: \(gelenKisi.kisiId ?? 0)")
        print("Gelen kisi Ad: \(gelenKisi.kisiAd ?? "")")
        print("Gelen Kisi No: \(gelenKisi.kisiTel ?? "")")
    }
    
    
}
