//
//  Communautes.swift
//  SantePourTous
//
//  Created by Saidou on 27/06/2022.
//

import Foundation
struct Communautes : Codable, Identifiable{
    var id:Int
    var nameGoup:String
    var icone:String
    var title:String
    var comment:String?
    var picture:String
    var user:Users
    struct Users: Hashable, Codable {
            var id:Int
            var name:String
            var avatar:String
        }
    /*
    var forum:Forums
    struct Forums: Hashable, Codable {
            var id:Int
            var contenu:String
            var icone:String
            var numberViews:Int
            var numberLike:Int
            var numberComment:Int
        }*/
    
}


