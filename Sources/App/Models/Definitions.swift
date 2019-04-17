//
//  Definitions.swift
//  App
//
//  Created by Михаил on 16/04/2019.
//

import Vapor
import FluentSQLite

final class Definitions: Codable {
    var id: Int?
    var colors: DefinitionColor
    
    init(colors: DefinitionColor) {
        self.colors = colors
    }
}

extension Definitions: SQLiteModel {}

extension Definitions: Migration {}

extension Definitions: Content {}

final class DefinitionColors: Codable {
    var id: Int?
    var dota: DefinitionColor
    
    init(dota: DefinitionColor) {
        self.dota = dota
    }
}

final class DefinitionColor: Codable {
    var id: Int?
    var secondary: String
    var secondaryDark: String
    var secondaryLight: String
    var primary: String
    var primaryLight: String
    var primaryDark: String
    
    init(secondary: String, secondaryDark: String, secondaryLight: String, primary: String, primaryLight: String, primaryDark: String) {
        self.secondary = secondary
        self.secondaryDark = secondaryDark
        self.secondaryLight = secondaryLight
        self.primary = primary
        self.primaryLight = primaryLight
        self.primaryDark = primaryDark
    }
}
