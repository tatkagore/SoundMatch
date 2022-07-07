//
//  ProfileSoundMatch.swift
//  SoundMatch
//
//  Created by Apprenant 79 on 27/06/2022.
//

import SwiftUI

struct ProfileSoundMatch: View {
    
    
    // Array For ExtractView
    
    let playlist = [
        Music(musicTitle: "Outro", musicImage: "zkr", genre: [Genre.Rap], playTime: "0.00", addToFavorite: true, like: true, isPlaying: false),
        Music(musicTitle: "God bless", musicImage: "godbless", genre: [Genre.Rap], playTime: "0.00", addToFavorite: true, like: true, isPlaying: false),
        Music(musicTitle: "Billy", musicImage: "sonbest", genre: [Genre.Rap], playTime: "0.00", addToFavorite: true, like: true, isPlaying: false),
        Music(musicTitle: "Amour X", musicImage: "niska", genre: [Genre.Rap], playTime: "0.00", addToFavorite: true, like: true, isPlaying: true),
        Music(musicTitle: "Bambina", musicImage: "pnl", genre: [Genre.Rap], playTime: "0.00", addToFavorite: true, like: true, isPlaying: false),
        Music(musicTitle: "Soleil Mourant", musicImage: "solalune", genre: [Genre.Rap], playTime: "0.00", addToFavorite: true, like: true, isPlaying: false),
        Music(musicTitle: "Battosai", musicImage: "f430", genre: [Genre.Rap], playTime: "0.00", addToFavorite: true, like: true, isPlaying: false),
        Music(musicTitle: "Yasser", musicImage: "freeze&ashe", genre: [Genre.Rap], playTime: "0.00", addToFavorite: true, like: true, isPlaying: false)
    ]
    
    let friendlist = [
        friend(friendImage: "rico", friendName: "Rico"),
        friend(friendImage: "fred", friendName: "Fred"),
        friend(friendImage: "lynda", friendName: "Lynda"),
        friend(friendImage: "mathilde", friendName: "Mathilde"),
        friend(friendImage: "xavier", friendName: "Xavier"),
        friend(friendImage: "bertrand", friendName: "Bertrand"),
        friend(friendImage: "lucy", friendName: "Lucy"),
        
    ]
    
    // To change color of background picker and text
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.init(red: 255/255, green: 210/255, blue: 213/255, alpha: 1)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        
        
        
    }
    
    @State private var changeSection = 1
    
    var body: some View {
        
        
        // BackGround color
        ZStack {
            Rectangle()
            
            // BackGround Profil Banner
            
            VStack{
                ZStack {
                    Image("bg-profil")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 390, height: 280, alignment: .center)
                        .blur(radius: 4)
                    
                    // Profil Picture + User Name
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "pencil.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                            
                        }
                        
                        Image("profil-image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: 20)
                            .frame(width: 140, height: 120)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 5))
                        
                        
                        Text("Lagertha Lodbrock")
                            .foregroundColor(.white)
                            .bold()
                    }
                    
                }
                // Picker Favorite music and affinity list
                VStack {
                    HStack{
                        Picker(
                            selection: $changeSection, label: Text("Picker"), content: {
                                Text("Mes musiques likés").tag(1)
                                
                                Text("Liste d'affinité").tag(2).foregroundColor(Color.white)
                                
                                
                                
                            })
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.white, lineWidth: 2)
                                .offset(y: 0.7)
                        )
                        .pickerStyle(SegmentedPickerStyle())
                        
                    }
                }
                                
                // View for favorite music
                if changeSection == 1 {
                    VStack {
                        ScrollView {
                            ForEach(playlist, id: \.id) { music in
                                HStack{
                                    Image(music.musicImage)
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text(music.musicTitle)
                                        .foregroundColor(.white)
                                    Spacer()
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(Color("cyan"))
                                }
                            }
                        }
                    }
                }else {
                    VStack {
                        ScrollView {
                            ForEach(friendlist, id: \.id) { friend in
                                HStack{
                                    Image(friend.friendImage)
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text(friend.friendName)
                                        .foregroundColor(.white)
                                    Spacer()
                                    Image(systemName: "message.circle.fill")
                                        .foregroundColor(Color("cyan"))
                                }
                            }
                        }
                    }
                }
            }
        }.ignoresSafeArea()
    }
}

struct ProfileSoundMatch_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSoundMatch()
    }
}
