//
//  ViewController.swift
//  CollectionViewKullanimi
//
//  Created by Taha Turan on 24.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ulkeler:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["Tukiye" , "Almanya" , "Japonya" , "Italya" , "Rusya" , "Romanya" , "Fransa"]
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}


extension ViewController: UICollectionViewDelegate , UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ulkeler.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! CollectionViewHucre
        
        cell.labelUlkeAdi.text = ulkeler[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(ulkeler[indexPath.row]) secildi")
    }
    
}
