//
//  AddCardView.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 24.07.21.
//

import SwiftUI

struct AddCardView: View {
    var body: some View {
        ZStack {
            RoundedCardView(style: .card)
            Image.init(systemName: "plus")
                .resizable()
                .padding(70)
                .frame(
                    width: RoundedCardView.Style.card.size,
                    height: RoundedCardView.Style.card.size,
                    alignment: .center
                )
        }
    }
}

struct AddCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddCardView()
    }
}
