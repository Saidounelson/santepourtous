//
//  MaladiesList.swift
//  SantePourTous
//
//  Created by Saidou on 24/06/2022.
//

import SwiftUI

struct MaladiesHome: View {
    
    init(){
        navigationBarAppearance()
    }
    var sicknes = ModelData().sicknes
    @State var searchQuery:String=""
    var body: some View {
        VStack() {
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
                    
                    List{
                            ForEach(searchQuery == "" ? sicknes:sicknes.filter{$0.name.lowercased().contains(searchQuery.lowercased())}){maladie in
                                NavigationLink {
                                    MaladiesItem(sickness: maladie)
                                }label: {
                                    MaladieRow(sickness: maladie)
                                }
                                
                            }
                        }
                    .navigationTitle(titleCategoriesDeMaladies)
                .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
        
    }
}


struct MaladiesHome_Previews: PreviewProvider {
    static var previews: some View {
        MaladiesHome()
    }
}
