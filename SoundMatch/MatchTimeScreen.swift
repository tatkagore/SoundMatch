
//
//  essaiSoundMatch2.swift
//  essaiSoundMatch
//
//  Created by apprenant 95 on 30/06/2022.
//

import SwiftUI

struct MatchTimeScreen: View {
    @Binding var showMatch: Bool
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
            VStack {
                
                Image("MatchTime")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 277.0, height: 34.0)
                    .padding()
                
                
                Image ("homme2")
                    .resizable()
                    .frame(width: 130.0, height: 130.0)
                    .aspectRatio(contentMode: .fill )
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                
                Text ("Max")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                Text ("Hip-Hop/ Soul")
                    .fontWeight(.semibold)
                    .foregroundColor(Color("myCyan"))
                
                
                
                VStack{
                    HStack{
                        Button(action: {
                            showMatch.toggle()
                        }, label: {
                            
                            Image (systemName: "xmark.circle.fill")
                                .resizable()
                            
                                .foregroundColor(Color.red)
                                .frame(width: 50.0, height: 50.0)
                            // Spacer()
                                .padding(70)
                        })
                        
                        Image (systemName: "checkmark.circle.fill")
                            .resizable()
                        
                            .foregroundColor(Color("myCyan"))
                            .frame(width: 50.0, height: 50.0)
                        
                            .padding(60)
                        
                    }
                }
                VStack (alignment : .leading) {
                    
                    
                    
                    Text ("Biographie :")
//                        .underline()
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("myCyan"))
                        .padding()
                    
                    Text ("Vide, quantum, inquam, fallare, Torquate. oratio me istius philosophi non offendit; nam et complectitur verbis, quod vult, et dicit plane, quod intellegam; et tamen ego a philosopho, si afferat eloquentiam, non asperner, si non habeat, non admodum flagitem. re mihi non aeque satisfacit, et quidem locis pluribus. sed quot homines, tot sententiae; falli igitur possumus.")
                        .font(.footnote)
                        .fontWeight(.bold)
                    
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    
                }
            }
        }
    }
}




struct essaiSoundMatch2_Previews: PreviewProvider {
    static var previews: some View {
        MatchTimeScreen(showMatch: .constant(false))
    }
}




