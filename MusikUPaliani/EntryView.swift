//
//  EntryView.swift
//  MusikUPaliani
//
//  Created by Elliot Knight on 12/02/2022.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                VStack {
                    Spacer()
                    Text("MUSIKU")
                        .padding()
                        .font(.system(size: 55, weight: .semibold, design: .default).bold())
                        .foregroundColor(.white)
                    Spacer()
                    Button(action: { }, label: { Text("Let's get started")
                    }) .buttonStyling()
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}



struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.title3.bold())
            .padding(.horizontal, 40)
            .padding(.vertical)
            .background(LinearGradient(colors: [.pink, .purple, .purple], startPoint: .trailing, endPoint: .leading))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: Color.purple, radius: 3, x: 3, y: 3)
    }
}

extension View {
    func buttonStyling() -> some View {
        modifier(ButtonModifier())
    }
}
