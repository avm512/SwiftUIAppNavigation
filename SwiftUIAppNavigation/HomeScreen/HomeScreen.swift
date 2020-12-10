//
//  HomeScreen.swift
//  SwiftUIAppNavigation
//
//  Created by Aleksandr Meshchenko on 06.12.20.
//
import SwiftUI

struct HomeScreen: View {
    
    @Binding var selectedTab: RootView.Tab
    @Binding var isSuperFood: Bool
    
    var body: some View {
        
        VStack {
            Spacer()
            Button(action: {
                selectedTab = RootView.Tab.search
            }) {
                Text("Change to tab 'Search'")
            }
            Spacer()
            Button(action: {
                selectedTab = RootView.Tab.search
                isSuperFood.toggle()
            }) {
                VStack {
                    Text("Change to tab 'Search'")
                    Text("Selet the \"🥜\" item")
                    }
                }
            Spacer()
            
        }
    }
}
