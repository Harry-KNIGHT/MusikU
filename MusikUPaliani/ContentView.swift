//
//  ContentView.swift
//  MusikUPaliani
//
//  Created by Elliot Knight on 12/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
          EntryView()
                .tabItem {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                
        }
            SearchMusicView()
                .tabItem {
                    Image(systemName: "list.dash")
                        .foregroundColor(.white)
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
