//
//  FilmHucre.swift
//  CollectionView_Filmler_Uygulamasi
//
//  Created by Taha Turan on 25.04.2023.
//

import UIKit

protocol FilmHucreProtocol {
    func sepeteEkle(indexPath:IndexPath)
}

class FilmHucre: UICollectionViewCell {
    
    
    @IBOutlet weak var filmImageView: UIImageView!
    
    @IBOutlet weak var filmAdiLabel: UILabel!
    
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var hucreProtocol:FilmHucreProtocol?
    var indexPath:IndexPath?
    
    
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
}
