//
//  ContentView.swift
//  MusicProject
//
//  Created by Apprenant 71 on 23/06/2022.
//

import SwiftUI

struct MusicView: View {
    @StateObject var viewModel = ChatsViewModel()
    
    @State private var search = ""
    
    init() {
            //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color("myCyan"))]

            //Use this if NavigationBarTitle is with displayMode = .inline
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.init(Color("myCyan"))]
        }
    
    var body: some View {
        
        
        NavigationView{
            
            List{
                
                ForEach(viewModel.getSortedFilteredChats(search: search)) { chat in
                    
                    NavigationLink(destination: {
                        ChatView(chat: chat)
                            .environmentObject(viewModel)
                        
                    }) {
                        
                        ChatRow(chat: chat)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button(action: {
                            viewModel.markUnread(!chat.hasUnreadMessage, chat: chat)
                        }) {
                            if chat.hasUnreadMessage{
                                Label("Read", systemImage: "text.bubble")
                            } else {
                                Label("Unread", systemImage: "circle.fill")
                            }
                        }
                        
                        .tint(.cyan)
                    }
                }
                .listRowBackground(Color.black)
            }
            .background(Color.black)
            
            .listStyle(PlainListStyle())
            .searchable(text: $search, placement: .navigationBarDrawer(displayMode: .always))
            .foregroundColor(.white)
            .navigationTitle("ROOMS") //changed with init in body
            .font(Font.custom("SamsungSharpSans-bold", size: 20))
            .navigationBarItems(trailing: Button(action:{}) {
                Image(systemName: "headphones")
                    .foregroundColor(Color("myCyan")) //here
            })
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    
    
    static var previews: some View {
       MusicView()
    }
}
