//
//  CardSetDetailsView.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 22.03.21.
//

import SwiftUI

struct CardSetDetailsView: View {
    var cardSet: CardSet

    var body: some View {
        VStack {
            Button("Edit") {

            }
            Button("Learn") {

            }
            Button("Delete") {

            }
        }
    }
}

struct CardSetDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CardSetDetailsView(cardSet: CardSet.mock())
    }
}
