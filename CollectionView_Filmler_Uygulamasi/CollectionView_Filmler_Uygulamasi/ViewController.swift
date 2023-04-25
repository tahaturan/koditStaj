//
//  ViewController.swift
//  CollectionView_Filmler_Uygulamasi
//
//  Created by Taha Turan on 25.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var filmCollectionView: UICollectionView!
    
    var filmlerListesi:[Filmler] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let genislik = self.filmCollectionView.frame.size.width
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumLineSpacing = 10
        tasarim.minimumInteritemSpacing = 10
        
        let hucreGenislik = (genislik - 30) / 2
        
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik * 1.65)
        filmCollectionView.collectionViewLayout = tasarim
        
        filmlerListesi = Filmler.dummyList
        
        filmCollectionView.dataSource = self
        filmCollectionView.delegate = self
    }


}


extension ViewController: UICollectionViewDataSource , UICollectionViewDelegate , FilmHucreProtocol {
    func sepeteEkle(indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmBaslik!) Siparis Verildi")
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = filmlerListesi[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hucreFilm", for: indexPath) as! FilmHucre
        cell.filmAdiLabel.text = film.filmBaslik!
        cell.filmFiyatLabel.text = "\(film.filmFiyat!) TL"
        cell.filmImageView.image = UIImage(named: film.filmResimAdi!)
      
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        cell.layer.borderColor = UIColor.cyan.cgColor
        cell.layer.borderWidth = 0.5
        return cell
    }
}
