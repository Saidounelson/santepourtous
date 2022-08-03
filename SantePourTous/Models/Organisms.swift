//
//  Organisms.swift
//  SantePourTous
//
//  Created by Saidou on 24/06/2022.
//

import Foundation

struct Organisms : Codable,Identifiable{
    var id:Int
    var name:String
    var phone:String
    var email:String
    var adress:String
    var description:String
    var picture:String
    var latitude: Double?
    var longitude: Double?
    var icon:String
}
