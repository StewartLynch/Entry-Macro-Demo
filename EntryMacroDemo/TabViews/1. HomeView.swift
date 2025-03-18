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

struct HomeView: View {
    @State private var addDetail = false
    @Environment(\.appTheme) var appTheme
    var body: some View {
        NavigationStack {
            Image(systemName: "house")
                .font(.system(size: 250))
                .navigationTitle("Home")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Menu("Theme", systemImage: "gear") {
                            ForEach(Theme.Season.allCases) { season in
                                Button {
                                    appTheme.wrappedValue = Theme.set(for: season)
                                } label: {
                                    // Checkmark if current theme
                                    Label(season.rawValue.capitalized, systemImage: appTheme.season.wrappedValue == season ? "checkmark" : "minus")
                                }
                            }
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Wifi Password", systemImage: "wifi") {
                            addDetail.toggle()
                        }
                    }
                }
                .sheet(isPresented: $addDetail) {
                    WifiPasswordView()
                        .environment(\.colorScheme, .light)
                        .presentationDetents([.medium])
                }
                .withBackground(color: appTheme.wrappedValue.background.color)
        }
        
    }
}

#Preview {
    HomeView()
}
