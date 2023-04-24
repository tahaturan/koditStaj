//
//  TableViewHucre.swift
//  CustomCell_TableView_Kullanimi
//
//  Created by Taha Turan on 24.04.2023.
//

import UIKit

protocol TableViewHucreProtocol {
    func hucreUzerindekiButtonTiklandi(indexPath:IndexPath)
}

class TableViewHucre: UITableViewCell {
    
    
    @IBOutlet weak var kisiAdLabel: UILabel!
    
    var hucreProtocol : TableViewHucreProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    @IBAction func tiklaButton(_ sender: Any) {
        hucreProtocol?.hucreUzerindekiButtonTiklandi(indexPath: indexPath!)
    }
    

}
