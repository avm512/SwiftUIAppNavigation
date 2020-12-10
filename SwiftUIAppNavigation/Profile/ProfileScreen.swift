//
//  ProfileScreen.swift
//  SwiftUIAppNavigation
//
//  Created by Aleksandr Meshchenko on 10.12.20.
//
import SwiftUI


struct ProfileScreen: View {
    
    @State private var showModal: Bool = false
    
    var body: some View {
        Button(action: {
            showModal = true
        }) {
            Text("Show Modal")
        }.sheet(isPresented: $showModal) {
            // Modal View
            Text("🏛").font(Font.system(size: 200))
        }
    }
    
}
