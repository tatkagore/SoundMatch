//
//  ChatModel.swift
//  MusicProject
//
//  Created by Apprenant 71 on 24/06/2022.
//

import Foundation

struct Chat: Identifiable {
    var id: UUID {person.id}
    let person: Person
    var messages: [Message]
    var hasUnreadMessage = false
}
struct Person: Identifiable{
    let id = UUID()
    let name: String
    let imgString: String
}
struct Message: Identifiable{
    enum MessageType {
        case Sent, Recieved
        
    }
    
    let id = UUID()
    let date: Date
    let text: String
    let type: MessageType
    
    init(_ text: String, type: MessageType, date: Date) {
        self.date = date
        self.type = type
        self.text = text
    }
    init(_ text: String, type: MessageType) {
        self.init(text, type: type, date: Date())
    }
}
extension Chat {
    static let sampleChat = [
        //CHAT RAP
    Chat(person: Person(name: "RAP", imgString: "RAP"), messages: [
        Message("""
JAMES🐰:
Bonjour tout le monde 🤟
""", type: .Recieved, date: Date(timeIntervalSinceNow: -86400*3)),
        
        Message("""
FRANCOIS 🐵:
Salut,
vous avez aimé cette chanson
que je t'ai envoyée hier ?
""", type: .Recieved, date: Date(timeIntervalSinceNow: -86400*3)),
        Message("""
EMMA 🦄:
Oui🤙
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*3)),
        Message ("""
Kati 🐼:
Je l'aime bien aussi!
"""
                 , type: .Sent, date: Date(timeIntervalSinceNow:  -86400*3)),
        Message("""
Nath 🐯:
😜 super
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*2)),
        Message("""
Nancy 🦋:
Connais-tu les mêmes chansons dans ce genre 🎹 ?
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*1))
    ], hasUnreadMessage: true),
    // CHAT POP
    Chat(person: Person(name: "POP", imgString: "POP"), messages: [
        Message("""
Nancy 🦋:
Hey 😎
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*5)),
        Message("""
Kati 🐼:
Salut Nancy! 😃
""", type: .Sent, date: Date(timeIntervalSinceNow: -86400*2)),
        
        
        Message("""
Emma 🦄:
Coucou 🤟
""", type: .Recieved, date: Date(timeIntervalSinceNow: -86400*2)),
        Message("""
Kati 🐼:
Only girls! 
"""
                , type: .Sent, date: Date(timeIntervalSinceNow: -86400*2)),
        Message("""
Sonia 🐵:
Yeah 🤟
les filles, je vous enverrai une chose !
""", type: .Recieved, date: Date(timeIntervalSinceNow: -86400*4))
        
        
    ], hasUnreadMessage: true),
    
    //CHAT SOUL
    Chat(person: Person(name: "SOUL", imgString: "SOUL"), messages: [
        Message("""
Sarah 🐻:
Je kiffe
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*1)),
        Message("""
Kati 🐼:
celui-ci est le meilleur!
"""
                , type: .Sent, date:Date(timeIntervalSinceNow: -86400*1)),
        Message("""
Adrien 🦖:
J'adore le moment avec le solo de trompette
"""
                , type: .Recieved, date:Date(timeIntervalSinceNow: -86400*1)),
        Message("""
Olivier 🦁:
une bonne chanson!!
"""
                , type: .Recieved, date:Date(timeIntervalSinceNow: -86400*1)),
        Message("""
Sonia 🐵:
Oui, les gars, j'adore la façon
dont on correspond sur SoundMatch.
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*1)),
        Message("""
Tanya 🐷:
Mon application préférée!!
""", type: .Recieved, date:Date(timeIntervalSinceNow: -86400*2))
    ], hasUnreadMessage: true),
    
    //CHAT JAZZ
    
    Chat(person: Person(name: "JAZZ", imgString: "JAZZ"), messages: [
        Message("""
JAMES🐰:
bonjour tout le monde 🤟
""", type: .Recieved, date: Date(timeIntervalSinceNow: -86400*3)),
        
        Message("""
FRANCOIS 🐵:
Salut,
vous avez aimé cette chanson
que je vous ai envoyée hier ?
""", type: .Recieved, date: Date(timeIntervalSinceNow: -86400*3)),
        Message("""
EMMA 🦄:
Oui🤙
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*3)),
        Message ("""
Kati 🐼:
Je l'aime bien aussi!
"""
                 , type: .Sent, date: Date(timeIntervalSinceNow:  -86400*3)),
        Message("""
Nath 🐯:
😜 Super
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*2)),
        Message("""
ZO 🦄:
Je l'aime bien aussi :) ?
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*3))
    ], hasUnreadMessage: true),
    
    //CHAT INDIE
    Chat(person: Person(name: "INDIE", imgString: "INDIE"), messages: [
        Message("""
JAMES🐰:
Bonjour tout le monde 🤟
""", type: .Recieved, date: Date(timeIntervalSinceNow: -86400*3)),
        
        Message("""
FRANCOIS 🐵:
Salut,
vous avez aimé cette chanson
que je t'ai envoyée hier ?
""", type: .Recieved, date: Date(timeIntervalSinceNow: -86400*3)),
        Message("""
EMMA 🦄:
Oui🤙
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*3)),
        Message ("""
Kati 🐼:
perfect!
"""
                 , type: .Sent, date: Date(timeIntervalSinceNow:  -86400*3)),
        Message("""
Lisa 🦋:
😜 great!
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*2)),
        Message("""
Kate 🐯:
Oui!
"""
                , type: .Recieved, date: Date(timeIntervalSinceNow: -86400*1))
    ], hasUnreadMessage: true)
    ]
}
