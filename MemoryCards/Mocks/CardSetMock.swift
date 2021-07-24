//
//  CardSetMock.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 22.03.21.
//

import Foundation

extension CardSet {
    static func mock() -> CardSet {
        return CardSet(
            name: String.random(length: 5),
            description: String.random(length: 10),
            image: nil,
            cards: [Card.mock(), Card.mock(), Card.mock(), Card.mock(), Card.mock(), Card.mock(), Card.mock(), Card.mock()]
        )
    }
}

extension Card {
    static func mock() -> Card {
        return Card(front: String.random(length: 5), back: String.random(length: 5))
    }
}
