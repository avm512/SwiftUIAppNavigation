//
//  FilterView.swift
//  SwiftUIAppNavigation
//
//  Created by Aleksandr Meshchenko on 07.12.20.
//

import SwiftUI

struct FilterView: View {
    
    @Binding var isSuperFood: Bool
    @Binding var isFavorites: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Text("❤️")
                .font(.largeTitle)
                .onTapGesture {
                    isFavorites.toggle()
                }
                .opacity(isFavorites ? 1.0 : 0.2)
            Spacer()
            Text("🥜")
                .font(.largeTitle)
                .onTapGesture {
                    isSuperFood.toggle()
                }
            Spacer()
            
        }
    }
}
