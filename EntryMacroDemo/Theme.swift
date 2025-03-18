//
//----------------------------------------------
// Original project: EntryMacroDemo
// by  Stewart Lynch on 2025-03-16
//
// Follow me on Mastodon: https://iosdev.space/@StewartLynch
// Follow me on Threads: https://www.threads.net/@stewartlynch
// Follow me on Bluesky: https://bsky.app/profile/stewartlynch.bsky.social
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Email: slynch@createchsol.com
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct Theme: Codable {
    enum Season: String, Identifiable, CaseIterable, Codable {
        case spring, summer, fall, winter
        var id: Self { self }
    }
    
    var season: Season
    var tint: CodableColor
    var background: CodableColor
    
    enum CodingKeys: CodingKey {
        case season, tint, background
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.season = try container.decode(Season.self, forKey: .season)
        self.tint = try container.decode(CodableColor.self, forKey: .tint)
        self.background = try container.decode(CodableColor.self, forKey: .background)
    }
    
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.season, forKey: .season)
        try container.encode(self.tint, forKey: .tint)
        try container.encode(self.background, forKey: .background)
    }
    
    init(season: Season, tint: Color, background: Color) {
        self.season = season
        self.tint = CodableColor(tint)
        self.background = CodableColor(background)
    }
    
    static func set(for season: Season) -> Theme {
        switch season {
        case .spring:
            Theme(season: season, tint: .purple, background:  .pink)
        case .summer:
            Theme(season: season, tint:  .red, background: .yellow)
        case .fall:
            Theme(season: season, tint:  .orange, background:  .brown)
        case .winter:
            Theme(season: season, tint:  .mint, background:  .cyan)
        }
    }
}

extension Theme: RawRepresentable {
    var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
              let themeString = String(data: data, encoding: .utf8)
        else {
            return "{}"
        }
        return themeString
    }
    
    init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
              let theme = try? JSONDecoder().decode(Theme.self, from: data)
        else {
            return nil
        }
        self = theme
    }
}
