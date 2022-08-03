//
//  Utilities.swift
//  SantePourTous
//
//  Created by Saidou on 30/06/2022.
//

import Foundation

import SwiftUI


func navigationBarAppearance(){
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = .systemGreen
    appearance.titleTextAttributes = [.foregroundColor:UIColor.white]
    appearance.largeTitleTextAttributes = [.foregroundColor:UIColor.white]
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().compactAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
    UINavigationBar.appearance().tintColor = .white
}

struct MessageBubbles:Shape{
    func path(in rect: CGRect) -> Path {
        return Path{
            path in
            let pt1 = CGPoint(x: 0, y: 0)
            let pt2 = CGPoint(x: rect.width, y: 0)
            let pt3 = CGPoint(x: rect.width, y: rect.height)
            let pt4 = CGPoint(x: 0, y: rect.height)
            path.move(to: pt4)
            path.addArc(tangent1End: pt4, tangent2End: pt1, radius: 15)
            
            path.addArc(tangent1End: pt1, tangent2End: pt2, radius: 15)
            
            
            path.addArc(tangent1End: pt2, tangent2End: pt3, radius: 15)
            
            path.addArc(tangent1End: pt3, tangent2End: pt4, radius: 15)
        }
    }
}

//title Navigation Bar
let titleCategoriesDeMaladies:String = "Catégories de Maladies"
let titleChat:String = "Chats"
let titleCommunautes = "Communautes"
let titleOrganismes = "Organismes de Santé"
let titleProfil = "Profil"
