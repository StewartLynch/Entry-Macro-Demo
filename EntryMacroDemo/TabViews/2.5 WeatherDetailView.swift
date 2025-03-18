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

struct WeatherDetailView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.selectedTab) var selectedTab
    @Environment(\.appTheme) var appTheme
    var body: some View {
        VStack {
            Image(systemName: "sun.rain.fill")
                .symbolRenderingMode(.multicolor)
                .font(.system(size: 200))
            Button("Go home") {
                dismiss()
                // Now go home
                selectedTab.wrappedValue = 1
            }
            .buttonStyle(.bordered)
        }
        .withBackground(color: appTheme.wrappedValue.background.color)
    }
}

#Preview {
    WeatherDetailView()
}
