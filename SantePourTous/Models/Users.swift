//
//  User.swift
//  SantePourTous
//
//  Created by Saidou on 24/06/2022.
//

import Foundation

struct Users : Codable {
    var id:Int
    var name:String
    var avatar:String?
    var birthDay:String
    var email:String
    var phone:String?
    var weight:Double
    var size:Double
    var blood:Blood
    enum Blood: String, CaseIterable, Codable {
        case aPlus = "A+"
        case aMoins = "A-"
        case oPlus = "O+"
        case oMoins = "O-"
        case bPlus = "B+"
        case bMoins = "B-"
        case abPlus = "AB+"
        case abMoins = "AB-"
        
    }
    var isStatut:Bool=true
    var contactName:String?
    var contactPhone:String?
}
