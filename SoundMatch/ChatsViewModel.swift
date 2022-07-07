//
//  ChatsViewModel.swift
//  MusicProject
//
//  Created by Apprenant 71 on 27/06/2022.
//

import Foundation
class ChatsViewModel: ObservableObject {
    @Published var chats = Chat.sampleChat
    
    func getSortedFilteredChats(search: String) -> [Chat] {
        let sorted = chats.sorted {
            guard let date1 = $0.messages.last?.date else { return false}
            guard let date2 = $1.messages.last?.date else { return false}
            return date1 > date2

        }
        if search == "" {
            return sorted
        }
        return sorted.filter {$0.person.name.lowercased().contains(search.lowercased())}
    }
    func markUnread(_ newValue: Bool, chat: Chat) {
        if let index = chats.firstIndex(where: {$0.id == chat.id}) {
            chats[index].hasUnreadMessage = newValue
        }
    }
    func sendMessage(_ text: String, in chat: Chat) -> Message? {
        if let index = chats.firstIndex(where:{ $0.id == chat.id }) {
            let message = Message(text, type: .Sent)
            chats[index].messages.append(message)
            return message
        }
        return nil
    }
}
