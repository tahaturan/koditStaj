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
        
        let tasarim : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let genislik = self.collectionView.frame.size.width
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        tasarim.itemSize = CGSize(width: (genislik - 30)/3, height: (genislik - 30)/3)
        
        tasarim.minimumInteritemSpacing = 5
        tasarim.minimumLineSpacing = 5
        
        ulkeler = ["Tukiye" , "Almanya" , "Japonya" , "Italya" , "Rusya" , "Romanya" , "Fransa"]
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.collectionViewLayout = tasarim
        
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
        
        cell.layer.borderColor = UIColor.green.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(ulkeler[indexPath.row]) secildi")
    }
    
}
