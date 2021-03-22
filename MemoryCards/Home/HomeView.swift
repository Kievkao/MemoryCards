//
//  HomeView.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 22.03.21.
//

import SwiftUI

struct HomeView: View {
    let cardSets = [
        CardSet.mock(),
        CardSet.mock(),
        CardSet.mock(),
        CardSet.mock(),
        CardSet.mock(),
        CardSet.mock(),
        CardSet.mock(),
        CardSet.mock(),
        CardSet.mock(),
        CardSet.mock()
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], content: {
                    ForEach(cardSets, id: \.self) { _ in
                        //NavigationLink
                        CardSetView()
                    }
                }).padding(.horizontal, 2)
            }.navigationTitle("Your sets")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
