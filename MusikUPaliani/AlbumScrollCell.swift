//
//  AlbumScrollCell.swift
//  MusikUPaliani
//
//  Created by Elliot Knight on 12/02/2022.
//

import SwiftUI

struct AlbumScrollCell: View {
    let album: Album
    let width: CGFloat
    var body: some View {
        Image(album.cover)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(width: width, height: width)
    }
}

struct AlbumScrollCell_Previews: PreviewProvider {
    static var previews: some View {
        AlbumScrollCell(album: Album(cover: "willieNelson", albumName: "Drake", artist: "Drake", isLiked: false), width: 120)
    }
}
