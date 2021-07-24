//
//  CardSetDetailsView.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 22.03.21.
//

import SwiftUI

struct CardSetDetailsView: View {
    enum Mode {
        case view
        case edit
    }
    
    var cardSet: CardSet
    let mode: Mode
    @State var flippedCards = Set<Card>()
    @State var degrees: Double = 0

    var body: some View {
        VStack {
            Text(cardSet.name)
                .font(.largeTitle)
            cardSet.description.map {
                Text($0)
                    .font(.headline)
            }
            TabView {
                ForEach(cardSet.cards, id: \.self) { card in
                    CardView(card: card, mode: flippedCards.contains(card) ? .back : .front)
                        .rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 1, z: 0))
                        .onTapGesture {
                            withAnimation {
                                degrees = degrees == 0 ? 180 : 0
                                if flippedCards.contains(card) {
                                    flippedCards.remove(card)
                                } else {
                                    flippedCards.insert(card)
                                }
                            }
                    }
                }
                CardSetView(cardSet: CardSet.new())
            }.tabViewStyle(PageTabViewStyle())
        }
    }
}

struct CardSetDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CardSetDetailsView(cardSet: CardSet.mock(), mode: .edit)
    }
}
