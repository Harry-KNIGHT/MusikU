//
//  AlbumModel.swift
//  MusikUPaliani
//
//  Created by Elliot Knight on 12/02/2022.
//

import Foundation


struct Album: Identifiable {
    var id = UUID()
    let cover: String
    let albumName: String
    let artist: String
    var isLiked: Bool
}


let albums: [Album] = [
    Album(cover: "willieNelson", albumName: "On The Road Again", artist: "Willie Nelson", isLiked: false),
    Album(cover: "whiteAlbum", albumName: "White Album", artist: "The Beatles", isLiked: false),
    Album(cover: "willieNelson", albumName: "Certified Lover Boy", artist: "Drake", isLiked: false),
    Album(cover: "whiteAlbum", albumName: "White Album", artist: "The Beatles", isLiked: false),
    Album(cover: "willieNelson", albumName: "On The Road Again", artist: "Willie Nelson", isLiked: false),
    Album(cover: "whiteAlbum", albumName: "White Album", artist: "The Beatles", isLiked: false),
    Album(cover: "willieNelson", albumName: "Certified Lover Boy", artist: "Drake", isLiked: false),
    Album(cover: "whiteAlbum", albumName: "White Album", artist: "The Beatles", isLiked: false),
    
    

]
