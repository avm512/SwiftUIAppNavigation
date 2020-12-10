//
//  FoodDetailScreen.swift
//  SwiftUIAppNavigation
//
//  Created by Aleksandr Meshchenko on 06.12.20.
//
import SwiftUI

struct FoodDetailScreen: View {
    
    let foodName: String
    
    var body: some View {

            Text(foodName)
                .font(Font.system(size:200))

    }
    
}
