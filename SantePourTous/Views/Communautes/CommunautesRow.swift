//
//  CommunautesRow.swift
//  SantePourTous
//
//  Created by Doly Bouras 2 on 29/06/2022.
//

import SwiftUI

struct CommunautesRow: View {
    var title:String="Communautés"
    var communautes: Communautes
    var body: some View {
       
        HStack {
                Image(communautes.picture)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 100, maxHeight: 100)
                .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 8, content: {
                    Text(communautes.title )
                        .font(.caption)
                                Text(communautes.nameGoup)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    HStack {
                        Image(communautes.user.avatar)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: 25, maxHeight: 25)
                        .clipShape(Circle())
                        Image("aida")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: 25, maxHeight: 25)
                        .clipShape(Circle())
                        Image("profile_photo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding(.trailing)
                            .frame(maxWidth: 25, maxHeight: 25)
                        .clipShape(Circle())
                        
                    }
                            }
            )
        }.padding(.leading, -20.0)
                       
        
    }
    
       
}

struct CommunautesRow_Previews: PreviewProvider {
    static var previews: some View {
        let communautes = ModelData().communautes
        CommunautesRow( communautes: communautes[0])
            
    }
}

