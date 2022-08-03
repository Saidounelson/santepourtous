//
//  Friend.swift
//  SantePourTous
//
//  Created by Saidou on 28/06/2022.
//

import Foundation
struct Friend:Identifiable {
    var id=UUID().uuidString
    var name:String
    var detail:String
    var image:String
    
    
}

var friends = [
    Friend(name: "saidou", detail: "dev", image: "femme1"),
    Friend(name: "docteur1", detail: "docteur1", image: "docteur1"),
    Friend(name: "femme1", detail: "femme1", image: "femme1"),
    Friend(name: "docteur2", detail: "docteur2", image: "docteur1"),
    Friend(name: "femme2", detail: "femme2", image: "femme1"),
]
