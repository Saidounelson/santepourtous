//
//  CommunautesItem.swift
//  SantePourTous
//
//  Created by Doly Bouras 2 on 30/06/2022.
//

import SwiftUI

struct CommunautesItem: View {
    var communaute: Communautes
    var communautes = ModelData().communautes
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Image(communaute.picture)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(communaute.title )
                        .font(.title3)
                    Text(communaute.nameGoup)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .frame(maxWidth: 150,maxHeight:50)
                        .background(Color.secondeyColor)
                }
                
            }.padding()
            Spacer()
            Image("foroms")
                .resizable()
        }
        
    }
    
    struct CommunautesItem_Previews: PreviewProvider {
        
        static var previews: some View {
            let communautes = ModelData().communautes
            CommunautesItem(communaute: communautes[0])
        }
    }
}
