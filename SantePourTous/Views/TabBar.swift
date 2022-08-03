//
//  TabBarView.swift
//  SantePourTous
//
//  Created by Saidou on 24/06/2022.
//

import SwiftUI

struct TabBar: View {
    @State var selected=0
    var body: some View {
        VStack{
            TabView(selection: $selected){
                CommunautesHome()
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Communautés")
                    }.tag(0)
                MaladiesHome()
                    .tabItem {
                        Image(systemName: "bolt.heart")
                        Text("Maladies")
                    }.tag(1)
                OrganismesHome()
                    .tabItem {
                        Image(systemName: "cross.case")
                        Text("Organismes")
                            .foregroundColor(.red)
                    }.tag(2)
                ChatsHome()
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right")
                        Text("Chats")
                    }.tag(3)

            }.onAppear(){
                UITabBar.appearance().backgroundColor = .systemGreen //UIColor(.primaryColor)
                UITabBar.appearance().barTintColor = .systemGreen //UIColor(.primaryColor)
                //UITabBar.appearance().unselectedItemTintColor = UIColor.white
                UITabBar.appearance().unselectedItemTintColor = UIColor(.white)
            }.accentColor(.blue)
            
            
        }
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
