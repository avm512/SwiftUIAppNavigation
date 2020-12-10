//
//  FoodListViewModel.swift
//  SwiftUIAppNavigation
//
//  Created by Aleksandr Meshchenko on 06.12.20.
//

import Foundation
//View model

final class FoodListViewModel: ObservableObject {  ///final?
    // Put here collection by using
    //@State    -- if smth UI-like
    
    // чем меньше @Published тем лучше
    @Published private(set) var foods = [Food]()
    
    init() {
        let emojiCode = 0x1F602
        for number in 0..<64 {
            if let intEmoji = UnicodeScalar(emojiCode + number)?.value,
               let strEmoji = UnicodeScalar(intEmoji) {
                self.foods.append(Food(number: number, name: String(strEmoji), isFavorite: number % 2 == 0))
            }
        }
    }
}

struct Food: Identifiable{
    let id = UUID().uuidString
    let number: Int
    let name: String
    let isFavorite:  Bool
}
