//
//  ChatRow.swift
//  MusicProject
//
//  Created by Apprenant 71 on 24/06/2022.
//

import SwiftUI

struct ChatRow: View {
    let chat: Chat
    
    var body: some View {
        HStack(spacing: 20){
            Image(chat.person.imgString)
                .resizable()
                .frame(width: 80, height: 100)
                .clipShape(Circle())
            ZStack{
                VStack(alignment: .leading, spacing: 5) {
                    HStack{
                        Text(chat.person.name)
                            .bold()
                            .foregroundColor(Color("myCyan"))
                        Spacer()
                        Text(chat.messages.last?.date.descriptiveString() ?? "")
                            .foregroundColor(Color.white)
                    }
                    HStack{
                        Text(chat.messages.last?.text ?? "")
                            .foregroundColor(.gray)
                            .frame(height: 50, alignment: .top)
                            .frame(maxWidth: .infinity,  alignment: .leading)
                            .padding(.trailing, 40)
                    }
                }
                Circle()
                    .foregroundColor(chat.hasUnreadMessage ? .cyan : .clear)
                    .frame(width: 15, height: 15)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .background(Color.black)
        .frame(height: 80)
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(chat: Chat.sampleChat[0])
    }
}
