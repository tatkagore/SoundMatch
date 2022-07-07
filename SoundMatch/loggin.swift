//
//  loggin.swift
//  GenreMusical
//
//  Created by Apprenant 71 on 30/06/2022.
//

import SwiftUI

struct loggin: View {
    @Binding var toGoTabView: Bool
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                Image("casquelogo")
                    .offset(y:-90)
                Text("Let’s you in")
                    .font(Font.custom("SamsungSharpSans-bold", size: 50))
                    .fontWeight(.black)
                    .foregroundColor(Color("cyan"))
                    .offset(y:-100)
                
                VStack{
                    LoginExtractedView(image: "f.circle.fill", text: "Continuer avec Facebook")
                    LoginExtractedView(image: "g.circle.fill", text: "Continuer avec Google")
                    LoginExtractedView(image: "applelogo", text: "continuer avec Apple")
                    
                    Image("line")
                        .offset(y:-20)
                    
                    Button(action: {
                        toGoTabView.toggle()
                    }, label: {
                        Text("Connectez-vous")
                            .foregroundColor(.white)
                            .font(Font.custom("SamsungSharpSans-bold", size: 12))
                            
                    })
                    .frame(width: 150, height: 30)
                    .padding()
                    .background(Color("cyan"))
                    .cornerRadius(20)
                    .offset(y: 30)
                    
                    Button(action: {
                        //my action
                    }, label: {
                        Text("Je n'ai pas de compte")
                            .foregroundColor(.white)
                            .font(Font.custom("SamsungSharpSans-bold", size: 12))
                    })
                    .frame(width: 150, height: 30)
                    .padding()
                    .background(Color("cyan"))
                    .cornerRadius(20)
                    .offset(y: 30)
                }
            }
        }
    }
}

struct loggin_Previews: PreviewProvider {
    static var previews: some View {
        loggin(toGoTabView: .constant(false))
    }
}

struct LoginExtractedView: View {
    let image: String
    let text: String
    var body: some View {
        Button(action: {
            //my action
        }, label: {
            Image(systemName: image)
                .foregroundColor(.black)
            
            Text(text)
                .foregroundColor(.black)
                .font(Font.custom("SamsungSharpSans-bold", size: 16))
        })
        .frame(width: 250, height: 20)
        .padding()
        .background(.white)
        .cornerRadius(20)
        .offset(y: -60)
    }
}
