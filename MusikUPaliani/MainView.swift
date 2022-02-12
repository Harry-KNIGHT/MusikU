//
//  MainView.swift
//  MusikUPaliani
//
//  Created by Elliot Knight on 12/02/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            SearchMusicView()
                .tabItem {
                    Label("Music", systemImage: "minus")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
