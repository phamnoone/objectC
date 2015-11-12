//
//  Player.swift
//  
//
//  Created by Thanh Pham on 11/12/15.
//
//

import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}