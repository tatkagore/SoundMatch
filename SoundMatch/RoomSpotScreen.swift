//
//  ContentView.swift
//  essai sound match
//
//  Created by Apprenant 99 on 27/06/2022.
//

import SwiftUI

struct RoomSpotScreen: View {
    
    
    let musics = [
        Music(musicTitle: "Rap", musicImage: "img1", genre: [.Rap], playTime: "", addToFavorite: false, like: false, isPlaying: false),
        Music(musicTitle: "Pop", musicImage: "img2", genre: [.Pop], playTime: "", addToFavorite: true, like: true, isPlaying: false),
        Music(musicTitle: "Indie", musicImage: "img3", genre: [.Indie],  playTime: "", addToFavorite: true, like: true, isPlaying: false),
        Music(musicTitle: "Soul", musicImage: "img4", genre: [.Soul], playTime: "", addToFavorite: true, like: true, isPlaying: false),
        Music(musicTitle: "Jazz", musicImage: "img5", genre: [.Jazz], playTime: "", addToFavorite: true, like: true, isPlaying: false),
    ]
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Rectangle()
                    .ignoresSafeArea()
                
                VStack{
                    VStack(spacing: 0){
                        Image("sallesSpots")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 182, height: 32)
                        Spacer()
                        HStack {
                            
                            Text ("Choisissez votre salle d'écoute:")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
//                                .underline()
                                .padding()
                            Spacer()
                        }
                        Spacer()
                    }
                    ForEach(musics, id: \.id) { toto in
                        NavigationLink(destination: ExtractedView(music: toto), label: {
                            ExtractedView(music: toto)
                            
                        })
                    }
                    
                }
            }
        }
    }
}

struct ExtractedView: View {
    
    let music: Music
    
    var body: some View {
        HStack{
            Image(music.musicImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 46, height: 53)
               // .border(.white, width: 5)
                .cornerRadius(9)
                .padding()
                Spacer()
                HStack{
                    Spacer()
                    Text(music.musicTitle)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(width: 150, height: 30)
                        .background(Color("cyan"))
                        .border(.white, width: 3)
                        .cornerRadius(5)
                    
                    Spacer()
                
            }
//                .overlay(
//                RoundedRectangle(cornerRadius: 20)
//                    .size(width: 153, height: 29)
//                    .stroke(.white, lineWidth: 3)
//                    .offset(x: 75, y: 0)
//                    )
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RoomSpotScreen()
    }
}


