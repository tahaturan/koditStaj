//
//  ViewController.swift
//  Ornek_Yemek_App
//
//  Created by Taha Turan on 24.04.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var yemeklerTableView: UITableView!
    
    var yemeklerListesi:[Yemekler] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yemeklerListesi = Yemekler.dummyList
        yemeklerTableView.dataSource = self
        yemeklerTableView.delegate = self
        
    }


}




extension ViewController: UITableViewDelegate , UITableViewDataSource , YemekTableViewCellProtocol{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemeklerListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var gelenYemek:Yemekler = yemeklerListesi[indexPath.row]
        
     
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "yemekHucre", for: indexPath) as! YemekTableViewCell
        cell.labelYemekAdi.text = gelenYemek.yemekAdi
        cell.YemekResimImageView.image = UIImage(named: gelenYemek.yemekResimAdi!  )
        cell.labelYemekFiyat.text = String(gelenYemek.yemekFiyat!)
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    
    }
    
    func siparisVer(indexPath: IndexPath) {
        let gelenYemek = yemeklerListesi[indexPath.row]
        print("\(gelenYemek.yemekAdi ?? "") siparis verildi")
    }
}
