//
//  SearchScreen.swift
//  SwiftUIAppNavigation
//
//  Created by Aleksandr Meshchenko on 06.12.20.
//
import SwiftUI

struct SearchScreen: View {
    
    @ObservedObject var foodViewModel = FoodListViewModel()
    @Binding var isSuperFood: Bool
    @State private var isFavorites: Bool = false
    
    var body: some View {
        NavigationView {
            let navLink = NavigationLink(destination: FoodDetailScreen(foodName: "🥜"),
                                         isActive: $isSuperFood) { EmptyView() }.hidden()
            List() {
                FilterView(isSuperFood: $isSuperFood, isFavorites: $isFavorites)
                
                ForEach(foodViewModel.foods) { food in
                    if !isFavorites || food.isFavorite {
                        NavigationLink( destination: FoodDetailScreen(foodName: food.name)) {
                            cell(food: food)
                        }
                    }
                }
            }//List
            .overlay(navLink)
        }// NavigationView
    }
    
    func cell(food: Food) -> some View {
        HStack {
            Spacer()
            Text("Item \(food.number)")
            Spacer()
            Text(food.name)
            Spacer()
        }
    }
    
}




