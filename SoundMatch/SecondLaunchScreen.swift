//
//  SecondLaunchScreen.swift
//  SoundMatch
//
//  Created by Apprenant 79 on 29/06/2022.
//

import SwiftUI

struct SecondLaunchScreen: View{
    @Binding var toGoTabView: Bool
//    init() {
//        UINavigationController.
//    }
//    
    var shareText: String = "Share"
//    var shareColor = Color("cyan")
//    var share = shareText += shareColor
    
    var body: some View {
        
        NavigationView{
            ZStack {
                
                // Change background color
                Rectangle()
                    .foregroundColor(Color.black)
                
                VStack {
                    //  big woman image
                    Image("secondlaunchscreen")
                        .resizable()
                        .frame(width: 380, height: 537)
                    HStack {
                        
                        // share (cyan)
                      
                        Text("             what you are listening with your friends at anytime")
                            .foregroundColor(.white)
                            .font(Font.custom("SamsungSharpSans-Bold" , size: 25))
                            .fontWeight(.bold)
                        
                            .overlay{
                                Text("Share")
                                    .foregroundColor(Color("cyan"))
                                    .font(Font.custom("SamsungSharpSans-Bold" , size: 25))
                                    .fontWeight(.bold)
                                    .offset(x:-148, y:-17)
                            }
                        
                    }
                    VStack {
                        ZStack {
                            
                            // Just a button to go on connexion screen
                            
                            NavigationLink("Next", destination: loggin(toGoTabView: $toGoTabView))
                                .foregroundColor(Color.white)
                                .font(Font.custom("SamsungSharpSans-Bold" , size: 20))
                                .frame(width: 335, height: 55, alignment: .center)
                                .background(Color("cyan"))
                                .cornerRadius(8)
                               
                        }
                    }
                }
            }.ignoresSafeArea()
            .navigationBarHidden(true)
           
        }
        
    }
}
