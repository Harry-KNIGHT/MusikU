//
//  SearchMusicView.swift
//  MusikUPaliani
//
//  Created by Elliot Knight on 12/02/2022.
//

import SwiftUI

struct SearchMusicView: View {
    var listeningTypes = ["All", "Podcast", "Rock", "Rap", "Hip Hop", "Blues"]
    @State private var isLiked = false
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                ScrollView {
                    VStack {
                        SerchButtonView()
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(listeningTypes, id: \.self) { type in
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .frame(width: 99, height: 40)
                                            .foregroundStyle(.ultraThinMaterial)
                                        Text(type)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                    }
                                    .padding(.vertical, 2)
                                    //                                .padding(.horizontal, 5)
                                }
                            }
                            .padding(.horizontal)
                        }
                        VStack(alignment: .leading) {
                            Text("Trending Music")
                                .font(.title3.bold())
                                .padding()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 10) {
                                    ForEach(albums) { album in
                                        VStack {
                                            AlbumScrollCell(album: album, width: 120)
                                            Text(album.albumName)
                                                .font(.subheadline.bold())
                                                .foregroundColor(.white)
                                            Text(album.artist)
                                                .foregroundColor(.white)
                                                .padding(.top, 3)
                                        }
                                    }
                                }.padding(.horizontal)
                            }
                            HStack {
                                Text("Top")
                                    .font(.title2.bold())
                                    .foregroundColor(.primary)
                                Text("playlist")
                                    .font(.title2)
                                Spacer()
                                Text("See all")
                            }.padding()
                            ForEach(albums) { album in
                                HStack {
                                    AlbumScrollCell(album: album, width: 75)
                                    VStack {
                                        Text(album.albumName)
                                        Text(album.artist)
                                    }.foregroundColor(.white)
                                    Spacer()
                                    Button(action: { /* Like button with observable Object */ }, label: { Image(systemName: "heart.fill" )})
                                        .foregroundColor(album.isLiked ? .green : .secondary)
                                        .font(.title2)
                                }
                            }.padding()
                        }
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("Listen Music")
        }
    }
}

struct SearchMusicView_Previews: PreviewProvider {
    static var previews: some View {
        
        SearchMusicView()
        
    }
}
