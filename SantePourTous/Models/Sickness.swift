//
//  Sickness.swift
//  SantePourTous
//
//  Created by Saidou on 24/06/2022.
//

import Foundation

struct Sickness:Identifiable,Codable{
    var id:Int
    var name:String
    var picture:String?
    var icone:String
    var description:String
}
