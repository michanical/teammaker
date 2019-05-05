//
//  Games.swift
//  App
//
//  Created by Михаил on 03/05/2019.
//

import Vapor

enum Games: Int, CaseIterable {
    case dota = 0
    
    var name: String {
        switch self {
        case .dota:
            return "Dota2"
        }
    }
    
    var ident: String {
        switch self {
        case .dota:
            return "dota"
        }
    }
}

final class Game: Content {
    var name: String
    var ident: String
    var id: Int
    
    init(game: Games) {
        self.name = game.name
        self.id = game.rawValue
        self.ident = game.ident
    }
}
