//
//  SerchButtonView.swift
//  MusikUPaliani
//
//  Created by Elliot Knight on 12/02/2022.
//

import SwiftUI

struct SerchButtonView: View {
    @State private var text = ""
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField("\(Image(systemName: "magnifyingglass"))Search Music", text: $text)
                    .padding()
                    .foregroundColor(.white)
                    .textFieldStyle(.roundedBorder)
                
            }
        }
        //        .padding(.horizontal, 100)
        //        .padding(.vertical, 10)
        //        .background(.ultraThinMaterial)
        //        .clipShape(RoundedRectangle(cornerRadius: 30))
        
    }
}

struct SerchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SerchButtonView()
            .preferredColorScheme(.dark)
    }
}
