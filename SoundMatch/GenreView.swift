//
//  ContentView.swift
//  GenreMusical
//
//  Created by Apprenant 71 on 28/06/2022.
//

import SwiftUI

//enum Genre : String  {
//    case RnB = "RnB"
//    case Rock = "Rock"
//    case Classic = "Classic"
//    
//}
//
//struct Music : Identifiable  {
//    var id = UUID()
//    var musicTitle: String
//    var musicImage: String
//    var genre: [Genre]
//    //var track: String
//    var playTime: String
//    var addToFavorite: Bool
//    var like: Bool
//    var isPlaying: Bool
//    
//}

struct Item: Identifiable{
    let id = UUID()
    let title: String
    let image: String
}

struct GenreView: View {
    let items = [
        Item(title: "Pop", image: "pop"),
        Item(title: "Rap", image: "rap"),
        Item(title: "Indie", image: "indie"),
        Item(title: "Jazz", image: "jazz"),
        Item(title: "Soul", image: "soul"),
        Item(title: "Rock", image: "rock")
        
    ]
    let spacing: CGFloat = 10
    @State private var numberofRows = 3
    
    var body: some View {
        
        let columns = Array(repeating: GridItem(.flexible(), spacing: spacing), count: numberofRows)
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            HStack {
                Spacer()
                Image("Ellipse")
                    .resizable()
                    .scaledToFit()
                    .offset(y: 150)
            }
            
            VStack{
                HStack{
                  
                    Text("Genre")
                        .font(Font.custom("SamsungSharpSans-bold", size: 50))
                    .fontWeight(.black)
                    .foregroundColor(Color("myCyan"))
                    .offset(x: 20, y: -30)
                    Spacer()
                }
                HStack {
                    Text("Choisissez le genre de music")
                        .font(Font.custom("SamsungSharpSans-bold", size: 30))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .offset(x: 20)
                    Spacer()
                }
                LazyVGrid(columns: columns, spacing: spacing) {
                    ForEach(items) { item in
                        Button(action:{}) {
                        ItemView(item: item)
                    }
                        .buttonStyle(ItemButtonStyle(cornerRadius: 20))
                    
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct ItemButtonStyle: ButtonStyle {
    
    let cornerRadius: CGFloat
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            configuration.label
            if configuration.isPressed {
                Color.black.opacity(0.2)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
       .shadow(color: Color.black.opacity(0.2), radius: 10, y: 10)

    }
}

struct ItemView: View {
    let item: Item
    var body: some View {
        GeometryReader{ reader in
            
//            let fontSize = min(reader.size.width * 0.2, 30)
//            let imageWidth: CGFloat = min(60, reader.size.width * 0.4)
            
            VStack(spacing: 5) {
                
                Text(item.title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(Color("myCyan"))
                
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60)
                
            }
            .frame(width: 106, height: 96)
            .background(Color.white)
        }
        .frame(width: 106 ,height: 96)
//        .clipShape(RoundedRectangle(cornerRadius: 15))
//        .shadow(color: Color.black.opacity(0.2), radius: 10, y: 10)
    }
    
}

struct GenreView_Previews: PreviewProvider {
    static var previews: some View {
        GenreView()
    }
}
