//
//  HomeView.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 22.03.21.
//

import SwiftUI

struct HomeView: View {
    let cardSets: [CardSet] = [
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
            content()
                .navigationBarTitle("Your sets")
        }
    }
}

private extension HomeView {
    
    func content() -> AnyView {
        if !cardSets.isEmpty {
            return notEmptyContent()
        } else {
            return emptyContent()
        }
    }
    
    func notEmptyContent() -> AnyView {
        return AnyView(
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 16) {
                    ForEach(cardSets, id: \.self) { set in
                        NavigationLink(destination: CardSetDetailsView(cardSet: set, mode: .view)) {
                            CardSetView(cardSet: set)
                        }
                    }
                }.padding(.all, 8)
            }
        )
    }
    
    func emptyContent() -> AnyView {
        return AnyView(NavigationLink(destination: CardSetDetailsView(cardSet: CardSet.new(), mode: .edit)) {
            Text("Create new")
                .font(.largeTitle)
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 8")
    }
}
