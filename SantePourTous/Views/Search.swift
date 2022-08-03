//
//  Home.swift
//  SantePourTous
//
//  Created by Saidou on 28/06/2022.
//

import SwiftUI

struct Search: View {
    // Search Text ........
    @Binding var searchQuery:String
    var body: some View {
            // Search Bar
            HStack(spacing: 10){
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 23, weight: .bold))
                    .foregroundColor(.gray)
                
                TextField("Rechercher",text: $searchQuery)
                Image(systemName: "mic.fill")
                    .font(.system(size: 23, weight: .bold))
                    .foregroundColor(.gray)
            }.padding(.vertical,8)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.05))
                .cornerRadius(8)
                .padding()
                .padding(.horizontal)
           
            
        /*
        //Divider Line .....
        HStack{
            Text("RECENTS")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            Rectangle()
                .fill(Color.gray.opacity(0.6))
                .frame(maxHeight: 0.5)
        }*/
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Search(searchQuery: .constant(""))
    }
}
