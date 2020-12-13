//
//  CollectionDetailImageCellView.swift
//  StarwarsApp
//
//  Created by Osvaldo Chaparro on 12/12/2020.
//

import UIKit

class CollectionDetailImageCellView: UICollectionViewCell {
    
    @IBOutlet var cellView: UIView?
    @IBOutlet var characterImage: UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellView?.layer.cornerRadius = 10.0
        cellView?.layer.shadowColor = UIColor.init(displayP3Red: 0.898, green: 0.898, blue: 0.898, alpha: 1).cgColor
        cellView?.layer.shadowOffset = CGSize.zero
        cellView?.layer.shadowOpacity = 0.7
        cellView?.layer.shadowRadius = 4.0
        
        characterImage?.layer.cornerRadius = 10.0
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        characterImage?.image = nil
    }
    
    func configureViews(imageName: String) {
        characterImage?.image = UIImage(named: imageName)
    }
}
