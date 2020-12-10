//
//  RootView.swift
//  SwiftUIAppNavigation
//
//  Created by Aleksandr Meshchenko on 05.12.20.
//

import SwiftUI

struct RootView: View {
    
    @State private var selectedTab: Tab = .search
    @State private var isSuperFood: Bool = false
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            HomeScreen(selectedTab: $selectedTab, isSuperFood: $isSuperFood).tabItem {
                Image(systemName: "star.circle")
                Text("Settings")
            }.tag(Tab.settings)
            
            SearchScreen(isSuperFood: $isSuperFood).tabItem {
                Text("Search")
                Image(systemName: "magnifyingglass")
                    .font(Font.largeTitle.weight(.black))
            }.tag(Tab.search)
            
            ProfileScreen().tabItem {
                Text("Profile")
                Image(systemName: "person.circle")
            }.tag(Tab.prifile)
            
        }
    }
}

extension RootView {
    enum Tab: Hashable {
        case settings
        case search
        case prifile
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
