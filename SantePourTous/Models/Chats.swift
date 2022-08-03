//
//  Messages.swift
//  SantePourTous
//
//  Created by Saidou on 24/06/2022.
//

import Foundation

struct Chats: Codable, Identifiable{
    var id:Int
    var content:String
    //var user:String
    var user:Users
    var heure:String
    struct Users: Hashable, Codable {
        var id:Int
        var name:String
        var avatar:String
    }
    var onLine:Bool=false
}
