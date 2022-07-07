//
//  TabBar.swift
//  SoundMatch
//
//  Created by Apprenant 79 on 28/06/2022.
//

import SwiftUI
import UIKit



//struct MatchView: View {
//    var body: some View {
//        NavigationView {
//
//        }
//        .navigationTitle("Match")
//    }
//}
//
//struct SpotView: View {
//    var body: some View {
//        NavigationView {
//
//        }
//        .navigationTitle("Spot")
//    }
//}
//
//struct ProfileView: View {
//    var body: some View {
//        NavigationView {
//
//        }
//        .navigationTitle("Profile")
//    }
//}

struct ContentView: View {
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 30/255, alpha: 100)
        UITabBar.appearance().unselectedItemTintColor = UIColor(red: 152/255, green: 152/255, blue: 159/255, alpha: 100)
     }
    
    var body: some View{
        
        return TabView {
            PlayerView()
                .tabItem {
                    Image(systemName: "waveform.circle.fill")
                    Text("Match")
                }
            MusicView()
                .tabItem {
                    Image(systemName: "message.and.waveform.fill")
                    Text("Spot")
                }
            ProfileSoundMatch()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }.accentColor(Color(UIColor(red: 5/255, green: 177/255, blue: 167/255, alpha: 100)))
            .navigationBarBackButtonHidden(true)
    }
}
