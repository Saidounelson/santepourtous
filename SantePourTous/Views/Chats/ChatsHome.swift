//
//  ChatsHome.swift
//  SantePourTous
//
//  Created by Saidou on 28/06/2022.
//

import SwiftUI

struct ChatsHome: View {
    init(){
        navigationBarAppearance()
    }
    @State var searchQuery:String=""
    var title:String = "Chat"
    var chats = ModelData().chats
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    VStack{
                        
                        // Search Bar ........
                        HStack(spacing: 15){
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 20, weight:.bold))
                                .foregroundColor(.gray)
                            TextField("Rechercher", text: $searchQuery)
                            Image(systemName: "mic.fill")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.gray)
                        }.padding(.vertical,10)
                        .padding(.horizontal )
                        .background(Color.primary.opacity(0.05))
                        .cornerRadius(8)
                        .padding()
                        
                    }
                
                    ScrollView(.vertical, showsIndicators: true, content: {
                        
                            ForEach(searchQuery == "" ? chats:chats.filter{$0.user.name.lowercased().contains(searchQuery.lowercased())}){ chat in
                                // Friend Card Row View ...
                                NavigationLink {
                                    ChatsItem(chat: chat)
                                }label: {
                                    ChatsRow(chat: chat)
                                }
                            }
                        
                    })
                    
                }
               
                .navigationTitle(titleChat)
                .navigationBarTitleDisplayMode(.inline)
            }
            
        }
    }
}

struct ChatsHome_Previews: PreviewProvider {
    static var previews: some View {
        ChatsHome()
    }
}
