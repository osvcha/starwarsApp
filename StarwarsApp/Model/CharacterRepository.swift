//
//  CharacterRepository.swift
//  StarwarsApp
//
//  Created by Osvaldo Chaparro on 10/12/2020.
//

import Foundation

let lightSide = characterSide(sideName: .light, image: "")
let darkSide = characterSide(sideName: .dark, image: "")


class CharacterRepository {
    
    
    let characterSample = [
        Character(name: "Luke Skywalker", mainImage: "luke_main", side: lightSide, images: ["luke_1","luke_2","luke_3","luke_4","luke_5"], description: "La última esperanza de la rebelión", episodies: [.IV,.V,.VI,.VII,.VIII,.IX], biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, lorem et ornare vulputate, mi augue tempor ex, a luctus augue nisl quis leo. Suspendisse nisi turpis, varius id commodo vitae, iaculis ac turpis. Suspendisse in ornare odio.", favorite: false, sounds: []),
        Character(name: "Han Solo", mainImage: "solo_main", side: lightSide, images: ["solo_1","solo_2","solo_3"], description: "Duro por fuera, blando por dentro", episodies: [.IV,.V,.VI,.VII], biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, lorem et ornare vulputate, mi augue tempor ex, a luctus augue nisl quis leo. Suspendisse nisi turpis, varius id commodo vitae, iaculis ac turpis. Suspendisse in ornare odio.", favorite: true, sounds: []),
        Character(name: "Darth Vader", mainImage: "vader_main", side: darkSide, images: ["vader_1","vader_2","vader_2"], description: "Versión mas oscura de Anakin Skywalker", episodies: [.I,.II,.III,.IV,.V,.VI], biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, lorem et ornare vulputate, mi augue tempor ex, a luctus augue nisl quis leo. Suspendisse nisi turpis, varius id commodo vitae, iaculis ac turpis. Suspendisse in ornare odio.", favorite: true, sounds: ["vader_1.mp3"]),
        Character(name: "Emperador Palpatine", mainImage: "palpatine_main", side: darkSide, images: ["palpatine_1","palpatine_2"], description: "La maldad personificada", episodies: [.I,.II,.III,.IV,.V,.VI], biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, lorem et ornare vulputate, mi augue tempor ex, a luctus augue nisl quis leo. Suspendisse nisi turpis, varius id commodo vitae, iaculis ac turpis. Suspendisse in ornare odio.", favorite: false, sounds: []),
        Character(name: "C3PO", mainImage: "c3po_main", side: lightSide, images: ["c3po_1","c3po_2","c3po_3","c3po_4"], description: "Hola, yo soy C-3PO, relaciones cibernéticas humanas.", episodies: [.I,.II,.III,.IV,.V,.VI,.VII,.VIII,.IX], biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, lorem et ornare vulputate, mi augue tempor ex, a luctus augue nisl quis leo. Suspendisse nisi turpis, varius id commodo vitae, iaculis ac turpis. Suspendisse in ornare odio.", favorite: false, sounds: ["c3po_1.mp3"]),
        Character(name: "Leia Organa", mainImage: "leia_main", side: lightSide, images: ["leia_1","leia_2"], description: "Princesa y guerrera a partes iguales", episodies: [.I,.II,.III,.IV,.V,.VI,.VII], biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, lorem et ornare vulputate, mi augue tempor ex, a luctus augue nisl quis leo. Suspendisse nisi turpis, varius id commodo vitae, iaculis ac turpis. Suspendisse in ornare odio.", favorite: false, sounds: []),
        Character(name: "Obi Wan Kenobi", mainImage: "obiwan_main", side: lightSide, images: ["obiwan_1","obiwan_2"], description: "Maestro Jedi legendario", episodies: [.I,.II,.III,.IV], biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, lorem et ornare vulputate, mi augue tempor ex, a luctus augue nisl quis leo. Suspendisse nisi turpis, varius id commodo vitae, iaculis ac turpis. Suspendisse in ornare odio.", favorite: true, sounds: []),
        Character(name: "Jabba el Hutt", mainImage: "jabba_main", side: darkSide, images: ["jabba_1","jabba_2"], description: "Lo único mayor que su maldad es su tamaño", episodies: [.I,.II,.III,.IV,.V], biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, lorem et ornare vulputate, mi augue tempor ex, a luctus augue nisl quis leo. Suspendisse nisi turpis, varius id commodo vitae, iaculis ac turpis. Suspendisse in ornare odio.", favorite: false, sounds: []),
        Character(name: "General Grievous", mainImage: "grievous_main", side: darkSide, images: ["grievous_1","grievous_2"], description: "Lord Sith mecánico", episodies: [.I,.II,.III], biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, lorem et ornare vulputate, mi augue tempor ex, a luctus augue nisl quis leo. Suspendisse nisi turpis, varius id commodo vitae, iaculis ac turpis. Suspendisse in ornare odio.", favorite: false, sounds: []),
        
        
    ]
    
    
    
}
