//
//  Character.swift
//  StarwarsApp
//
//  Created by Osvaldo Chaparro on 10/12/2020.
//

import Foundation

typealias Characters = [Character]

class Character: Person {
    
    var mainImage: String?
    var side: characterSide
    var images: [String]
    var description: String?
    var episodies: [characterEpisodie.episodies]
    var biography: String?
    var favorite: Bool?
    var sounds: [String]
    
    init(name: String, mainImage: String, side: characterSide, images: [String], description: String, episodies: [characterEpisodie.episodies], biography: String, favorite: Bool, sounds: [String]) {
        
        
        self.mainImage = mainImage
        self.side = side
        self.images = images
        self.description = description
        self.episodies = episodies
        self.biography = biography
        self.favorite = favorite
        self.sounds = sounds
        
        super.init(name: name)
        
    }
    
}
