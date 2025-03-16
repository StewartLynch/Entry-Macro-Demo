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

struct WifiPasswordView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack{
                Image(systemName: "house.badge.wifi")
                    .font(.system(size: 150))
                Text("weBmyx-5turca-zandez")
                    .font(.title)
            }
            .navigationTitle("Wifi Password")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Dismiss", systemImage: "xmark.circle.fill") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    WifiPasswordView()
}
