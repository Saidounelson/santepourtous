//
//  Forums.swift
//  SantePourTous
//
//  Created by Saidou on 04/07/2022.
//

import Foundation

struct Forums: Codable,Identifiable{
        var id:Int
        var contenu:String
        var icone:String
        var numberViews:Int
        var numberLike:Int
        var numberComment:Int
    }
