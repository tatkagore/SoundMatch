//
//  ChatView.swift
//  MusicProject
//
//  Created by Apprenant 71 on 27/06/2022.
//

import SwiftUI

struct ChatView: View {
    
    @EnvironmentObject var viewModel: ChatsViewModel
    
    let chat: Chat
    @State private var text = ""
    @FocusState private var isFocused
    
    
    @State private var messageIDToScroll: UUID?
    
    
    var body: some View {
        ZStack {
           
            Color.black
                .ignoresSafeArea()
            HStack{
                Spacer()
                Image("Ellipse")
                    .offset(y: -100)
                    .opacity(0.7)
                
            }
            HStack {
        
                Image("Group")
                    .offset(y: 280)
                    .opacity(0.3)
                Spacer()
            }
            VStack(spacing: 0){
                GeometryReader { reader in
                    ScrollView {
                        ScrollViewReader { scrollReader in
                            getMessagesView(viewWidth: reader.size.width)
                                .padding(.horizontal)
                                .onChange(of: messageIDToScroll) { _ in
                                    if let messageID = messageIDToScroll {
                                        scrollTo(messageID: messageID, shouldAnimate: true, scrollReader: scrollReader)
                                    }
                                }
                                .onAppear{
                                    if let messageID = chat.messages.last?.id {
                                        scrollTo(messageID: messageID, anchor: .bottom, shouldAnimate: false, scrollReader: scrollReader)
                                    }
                                }
                        }
                    }
                    
                }
                .padding(.bottom, 5)
                
                toolbarView()
            }
            .padding(.top, 1)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: navBarLeadingBtn, trailing: navBarTrailingBtn)
            .onAppear{
                viewModel.markUnread(false, chat: chat)
        }
        }
    }
    
    var navBarLeadingBtn: some View {
        Button(action: {}) {
            HStack{
                Image(chat.person.imgString)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text(chat.person.name)
                    .foregroundColor(.white)
            }
            .foregroundColor(.black)
        }
    }
    
    var navBarTrailingBtn: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "video")
            }
            Button(action: {}) {
                Image(systemName: "phone")
            }
        }
    }
    
    func scrollTo(messageID: UUID, anchor: UnitPoint? = nil, shouldAnimate: Bool,
                  scrollReader: ScrollViewProxy) {
        DispatchQueue.main.async {
            withAnimation(shouldAnimate ? Animation.easeIn : nil) {
                scrollReader.scrollTo(messageID, anchor: anchor)
            }
        }
    }
    
    func toolbarView() -> some View {
        
        VStack{
            let height: CGFloat = 37
            
            HStack {
                TextField("Message ...", text: $text)
                    .padding(.horizontal, 10)
                    .frame(height: height)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 13))
                    .focused($isFocused)
                
                Button(action: sendMessage) {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.white)
                        .frame(width: height, height: height)
                        .background(
                            Circle()
                                .foregroundColor(text.isEmpty ? .gray : .blue)
                            
                        )
                }
                .disabled(text.isEmpty)
            }
            .frame(height: height)
        }
        .padding(.vertical)
        .padding(.horizontal)
        .background(.black)
    }
    
    func sendMessage() {
        if let message = viewModel.sendMessage(text, in: chat) {
            text = ""
            messageIDToScroll = message.id
        }
    }
    
    let columns = [GridItem(.flexible(minimum: 10))]
    func getMessagesView(viewWidth: CGFloat) -> some View {
        LazyVGrid(columns: columns, spacing: 0) {
            ForEach(chat.messages)  { message in
                let isReceived = message.type == .Recieved
                HStack{
                    ZStack{
                        Text(message.text)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                            .background(isReceived ?  Color("myCyan").opacity(0.9) : .cyan.opacity(0.9))
                            .cornerRadius(13)
                    }
                    .frame(width: viewWidth * 0.7, alignment: isReceived ? .leading : .trailing)
                    .padding(.vertical)
                }
                .frame(maxWidth: .infinity, alignment: isReceived ? .leading : .trailing)
                .id(message.id) 
            }
        }
    }
    
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ChatView(chat: Chat.sampleChat[0])
                .environmentObject(ChatsViewModel())
        }
    }
}
