//
//  CardSet.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 22.03.21.
//

import Foundation

struct CardSet: Hashable {
    let name: String
    let description: String?
    let cards: [Card]
}
