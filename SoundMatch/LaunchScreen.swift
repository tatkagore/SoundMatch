//
//  LaunchScreen.swift
//  SoundMatch
//
//  Created by Apprenant 79 on 29/06/2022.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var toGoTabView: Bool = true
    @State private var changeView = 0
    @State private var isActive = false
    
    var body: some View {
        
        if toGoTabView {
            if isActive {
                SecondLaunchScreen(toGoTabView: $toGoTabView)
            } else {
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(Color.black)
                    
                    Image("rings")
                        .resizable()
                    
                    VStack {
                        
                        Image("logosoundmatch")
                            .resizable()
                            .frame(width: 40, height: 42)
                        
                        
                        Image("soundmatch")
                            .resizable()
                            .frame(width: 260, height: 35)
                        
                        Image("vibestogether")
                            .resizable()
                            .frame(width: 220, height: 25)
                        
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            self.isActive = true
                        }
                    }
                }.ignoresSafeArea()
                
            }
        } else {
            ContentView()
                
        }
     
    }
}
