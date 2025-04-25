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

struct Theme {
    enum Season: String, Identifiable, CaseIterable {
        case spring, summer, fall, winter
        var id: Self { self }
    }
    
    var season: String
    var tint: Color
    var background: Color
    
    static func set(for season: Season) -> Theme {
        switch season {
        case .spring:
            Theme(season: season.rawValue, tint: .purple, background:  .pink)
        case .summer:
            Theme(season: season.rawValue, tint:  .red, background: .yellow)
        case .fall:
            Theme(season: season.rawValue, tint:  .orange, background:  .brown)
        case .winter:
            Theme(season: season.rawValue, tint:  .mint, background:  .cyan)
        }
    }
}
