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
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .shadow(radius: 5)
            Image.init(systemName: "plus")
                .resizable()
                .padding(70)
        }.frame(width: 280, height: 280)
    }
}

struct AddCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddCardView()
    }
}
