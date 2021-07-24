//
//  CardView.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 24.07.21.
//

import SwiftUI

struct CardView: View {
    enum Mode {
        case front
        case back
    }
    let card: Card
    let mode: Mode
    
    var body: some View {
        ZStack {
            RoundedCardView(style: .card)
            VStack {
                Text(mode == .front ? card.front : card.back)
                    .font(.largeTitle)
                    .rotation3DEffect(
                        .degrees(mode == .front ? 0 : 180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card.mock(), mode: .front)
    }
}
