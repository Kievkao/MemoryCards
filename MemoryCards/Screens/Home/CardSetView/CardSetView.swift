//
//  CardSetView.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 22.03.21.
//

import SwiftUI

struct CardSetView: View {
    var cardSet: CardSet
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .shadow(radius: 5)
            cardSet.image.map {
                Image(uiImage: $0)
            }
            VStack {
                Text(cardSet.name)
                    .font(.headline)
                cardSet.description.map {
                    Text($0)
                        .font(.caption2)
                }
                Spacer()
            }.padding(.top, 12)
        }.frame(width: 100, height: 100)
    }
}

struct CardSetView_Previews: PreviewProvider {
    static var previews: some View {
        CardSetView(cardSet: CardSet.mock())
    }
}
