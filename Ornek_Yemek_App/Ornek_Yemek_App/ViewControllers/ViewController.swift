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
        let gelenYemek:Yemekler = yemeklerListesi[indexPath.row]
        
     
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gelenYemek:Yemekler = yemeklerListesi[indexPath.row]
        performSegue(withIdentifier: "detayPage", sender: gelenYemek)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let veri = sender as? Yemekler {
            let detayViewController = segue.destination as! DetayViewController
            
            detayViewController.yemek = veri
        }
    }
}
