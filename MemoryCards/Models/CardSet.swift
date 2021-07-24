//
//  CardSet.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 22.03.21.
//

import UIKit

struct CardSet: Hashable {
    let name: String
    let description: String?
    let image: UIImage?
    let cards: [Card]
    
    static func new() -> CardSet {
        return CardSet(name: "", description: nil, image: nil, cards: [])
    }
}
