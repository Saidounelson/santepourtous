//
//  CommunautesList.swift
//  SantePourTous
//
//  Created by Saidou on 24/06/2022.
//

import SwiftUI

struct CommunautesHome: View {
    init(){
        navigationBarAppearance()
    }
    @State var searchQuery:String=""
    var communautes = ModelData().communautes
    var body: some View {
        VStack{
            NavigationView {
                
                VStack {
                    VStack{
                        
                        // Search Bar ........
                        HStack {
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
                        
                            NavigationLink(destination: Profil(), label: {
                                Text("Zaid")
                                    .foregroundColor(.black)
                                Image("Zaid")
                                .resizable()
                                .frame(maxWidth: 30, maxHeight: 30)
                                .clipShape(Circle())
                            })

                        }.padding()
                        
                    }
                    List{
                        ForEach(communautes) { communaute in
                            NavigationLink {
                                CommunautesItem(communaute: communaute)
                            }label: {
                                CommunautesRow(communautes: communaute)
                            }
                            
                        }
                    }
                }
                .navigationTitle(titleCommunautes)
                .navigationBarTitleDisplayMode(.inline)
            
            }
        }
    }
}


struct CommunautesHome_Previews: PreviewProvider {
    static var previews: some View {
        CommunautesHome()
    }
}
