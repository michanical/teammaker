//
//  Colors.swift
//  App
//
//  Created by Михаил on 03/05/2019.
//

import Vapor
final class Colors: Content, Codable {
    var secondary: String
    var secondaryDark: String
    var secondaryLight: String
    var primary: String
    var primaryLight: String
    var primaryDark: String
    var primaryText: String
    var secondaryText: String
    
    init(game: Games) {
        switch game {
        case .dota:
            self.secondary = "#d50000"
            self.secondaryDark = "#9b0000"
            self.secondaryLight = "#ff5131"
            self.primary = "#263238"
            self.primaryLight = "#4f5b62"
            self.primaryDark = "#000a12"
            self.secondaryText = "#ffffff"
            self.primaryText = "#ffffff"
        }
    }
}
