//
//  CharacterTableCellView.swift
//  StarwarsApp
//
//  Created by Osvaldo Chaparro on 11/12/2020.
//

import UIKit

class CharacterTableCellView: UITableViewCell {
    
    @IBOutlet var cellView: UIView?
    @IBOutlet var characterImage: UIImageView?
    @IBOutlet var name: UILabel?
    @IBOutlet var descriptionText: UILabel?
    @IBOutlet var favoriteButton: UIButton?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
        cellView?.layer.cornerRadius = 8.0
        cellView?.layer.shadowColor = UIColor.gray.cgColor
        cellView?.layer.shadowOffset = CGSize.zero
        cellView?.layer.shadowOpacity = 0.7
        cellView?.layer.shadowRadius = 4.0
    
        
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        characterImage?.image = nil
        name?.text = nil
        descriptionText?.text = nil
        favoriteButton?.isSelected = false

    }
    
    
    func configureViews(character: Character) {
        characterImage?.image = UIImage(named: character.mainImage ?? "")
        name?.text = character.name
        descriptionText?.text = character.description
        favoriteButton?.isSelected = character.favorite ?? false
    }
    
}
