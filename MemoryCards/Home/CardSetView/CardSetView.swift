//
//  CardSetView.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 22.03.21.
//

import SwiftUI

struct CardSetView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .frame(width: 100, height: 100)
                .shadow(radius: 5)
            VStack {
                Text("Title")
                Text("Description")
            }

        }
    }
}

struct CardSetView_Previews: PreviewProvider {
    static var previews: some View {
        CardSetView()
    }
}
