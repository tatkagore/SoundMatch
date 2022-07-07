//
//  ModelDonnee.swift
//  SoundMatch
//
//  Created by Apprenant 79 on 27/06/2022.
//

import SwiftUI


enum Genre : String  {
case RnB = "RnB"
case Rock = "Rock"
case Classic = "Classic"
case Rap = "Rap"
case Indie = "Indie"
case Soul = "Soul"
case Jazz = "Jazz"
case Pop = "Pop"

}



struct Music : Identifiable  {
var id = UUID()


var musicTitle: String
var musicImage: String
var genre: [Genre]
//var track: String
var playTime: String
var addToFavorite: Bool
var like: Bool
var isPlaying: Bool

}


struct Artist : Identifiable  {
var id = UUID()
var artistName: String
var artistImage: String
var albums: [Music]
var like: Bool

}



struct User : Identifiable  {
var id = UUID()
var userName: String
var userImage: String
var userGenre: [Genre]
var userFavoriteMusic: [Music]

}

struct friend : Identifiable {
var id = UUID()
var friendImage: String
var friendName: String
}


let veroC = Artist(artistName: "Véronique Chanson", artistImage: "", albums: [veroMusic], like: false)

let veroMusic = Music(musicTitle: "", musicImage: "srgs", genre: [Genre.Classic], playTime: "1,40", addToFavorite: false, like: false, isPlaying: false)
