//
//  ContentView.swift
//  SOUND MATCH
//
//  Created by Apprenant75 on 27/06/2022.
//

import SwiftUI
import AVKit

struct PlayerView: View {
    @State var index = 0
    @State var isPlaying = false
    @State var player : AVAudioPlayer!
    @State private var showMatch: Bool = false

    var body: some View {
        
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            //caroussel list
            
            //            LazyVStack{
            
            //        TabView(selection: \.self.$index){
            //
            //        ForEach(0...5, id:\.self){index in
            //                 Image("p\(index)")
            //                .resizable()
            //                .frame(height: 230)
            //                .cornerRadius(15)
            //                .padding(.horizontal)
            //
            //// identify current index
            //                .tag(index)
            //        }
            //
            //            }
            
            
            
            
            
            VStack (alignment:.center){
                
                ScrollView(.horizontal) {
                    
                    HStack(spacing: 50){
                        
                        Image("ALAIN_CHIFFON")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .border(.white, width: 2)
                            .cornerRadius(8)
                            .frame(width: 240, height: 200)
                        
                        
                        Image("SOUND_MATCH")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .border(.white, width: 2)
                            .cornerRadius(8)
                            .frame(width: 240, height: 200)
                        
                        Image("NO_MUSIC_NO_LIFE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .border(.white, width: 2)
                            .cornerRadius(8)
                            .frame(width: 240, height: 200)
                    }
                }
                
                HStack(alignment: .bottom, spacing: 3){
                    
                    
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                        .padding()
                    
                    //                    Spacer()
                    
                    Image(systemName: "multiply.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color(.red))
                        .frame(width: 40, height: 40)
                        .padding()
                    //                    Spacer()
                    Button(action: {
                        
                        if self.player.isPlaying{
                            
                            self.player.pause()
                            self.isPlaying = false
                        }
                        else{
                            self.player.play()
                            self.isPlaying = true
                        }
                        
                    }, label: {
                        if self.isPlaying == true {
                        Image(systemName:  "pause.circle" ).resizable().frame(width: 55, height: 55).aspectRatio(contentMode: .fit)
                            .padding()
                        } else {
                            Image(systemName:  "play.circle" ).resizable().frame(width: 55, height: 55).aspectRatio(contentMode: .fit)
                                .padding()
                        }
                    }).font(.title).foregroundColor(.white)//                        Spacer()
                    
                    HStack(alignment: .top){
                        Button(action: {
                            showMatch.toggle()
                        }, label: {
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("myCyan"))
                                .frame(width: 40, height: 40)
                                .padding()
                            
                        })
                       
                        //                        Spacer()
                        
                        Image(systemName: "heart")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                            .padding()
                    }
                    
                }
                
                
                
                Text("À l’écoute")
                    .font(.title3)
                    .foregroundColor(Color("myCyan"))
                    .padding([.top, .leading])
                Text("SOUND MATCH MUSIC TRAILER")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding([.leading, .bottom])
                
                
                VStack(alignment: .center){
                    
                    HStack{
                        
                        
                        VStack(alignment: .center){
                            MyItem(imageMusic: "SOUND_MATCH")
                            Text("SOUND MATCH ")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            
                        }
                        
                        VStack(alignment: .center){
                            MyItem(imageMusic: "ALAIN_CHIFFON")
                            Text("ALAIN CHIFFON")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        
                        VStack(alignment: .center){
                            MyItem(imageMusic: "CLODIO_DABINGA")
                            Text("CLODIO_DABINGA")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        
                        //                    Image("veronique chanson")
                        //                        .resizable()
                        //                        .aspectRatio(contentMode: .fill)
                        //                        .frame(width: 83, height: 73)
                        //                        .cornerRadius(15)
                        
                    }
                    
                    HStack{
                        
                        VStack(alignment: .center){
                            MyItem(imageMusic: "CONCERT_A_LELYSEE")
                            Text("CONCERT À L'ÉLYSÉE")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        
                        VStack(alignment: .center){
                            MyItem(imageMusic: "DESK_LIVE")
                            Text("DESK LIVE")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        VStack(alignment: .center){
                            MyItem(imageMusic: "CONCERT_SIMPLON")
                            Text("CONCERT SIMPLON")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                    }
                    
                    HStack{
                        
                        VStack(alignment: .center){
                            MyItem(imageMusic: "OUBLIER_MOI")
                            Text("OUBLIER MOI")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        VStack(alignment: .center){
                            MyItem(imageMusic: "TOUJOURS_LA_STREET")
                            Text("TOUJOURS LA STREET")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        
                        VStack(alignment: .center){
                            MyItem(imageMusic: "NO_MUSIC_NO_LIFE")
                            Text("NO MUSIC NO LIFE")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                    }
                }
            }
        }.onAppear {
            let url = Bundle.main.path(forResource: "sound_match_music_trailer", ofType: "mp3")
            self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
        }
        .sheet(isPresented: $showMatch, content: {
            MatchTimeScreen(showMatch: $showMatch)
        })
    }
}

struct MyItem: View {
    let imageMusic: String
    var body: some View {
        Image(imageMusic)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 90)
            .cornerRadius(15)
        
        
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
