//
//  RoundedCardView.swift
//  MemoryCards
//
//  Created by Andrii Kravchenko on 24.07.21.
//

import SwiftUI

struct RoundedCardView: View {
    enum Style {
        case cardSet
        case card
        
        var size: CGFloat {
            switch self {
            case .card: return 280
            case .cardSet: return 100
            }
        }
    }
    
    let style: Style
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.white)
            .shadow(radius: 5)
            .frame(width: style.size, height: style.size)
    }
}

struct RoundedCardView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedCardView(style: .cardSet)
    }
}
