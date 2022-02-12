//
//  BackgroundView.swift
//  MusikUPaliani
//
//  Created by Elliot Knight on 12/02/2022.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors:
                        [
                            Color("lightBluePurple"),
                            Color("personalPink"),
                            Color("personalPurple"),
                        ],
                       startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
