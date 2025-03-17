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

struct StartTab: View {
    @State private var selectedTab = 1
    @State private var appTheme = Theme.set(for: .spring)
//    @Environment(\.appColor) var appColor
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house", value: 1) {
                HomeView()
            }
            Tab("Travel", systemImage: "airplane", value: 2) {
                TravelView()
//                    .environment(\.appColor, .green) 
            }
            Tab("Highlight", systemImage: "party.popper", value: 3) {
                HighlightView()
            }
        }
        .environment(\.selectedTab, $selectedTab)
        .environment(\.appTheme, $appTheme)
        .tint(appTheme.tint)
//        .tint(appColor)
    }
}

#Preview {
    StartTab()
}
