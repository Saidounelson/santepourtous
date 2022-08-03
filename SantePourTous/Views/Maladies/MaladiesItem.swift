//
//  MaladiesItem.swift
//  SantePourTous
//
//  Created by Saidou on 28/06/2022.
//

import SwiftUI

struct MaladiesItem: View {
    var sickness:Sickness
    var body: some View {
        VStack{
            Text(sickness.name)
                .font(.title)
                .foregroundColor(.black)
                .bold()
                .frame(maxWidth: .infinity,alignment:.center)
                .padding()
            HStack{
                ZStack {
                    Circle()
                        .foregroundColor(.secondeyColor)
                        .frame(maxWidth: 300,  maxHeight: 300)
                    Image(sickness.picture!)
                        .resizable()
                        .frame(maxWidth: 250,  maxHeight: 150)
                        .foregroundColor(.primaryColor)
                }
            }.padding()
            
            
            Text(sickness.description)
                .font(.system(size: 20))
            
        }.padding()
    }
}

struct MaladiesItem_Previews: PreviewProvider {
    static var sicknes = ModelData().sicknes
    static var previews: some View {
        MaladiesItem(sickness: sicknes[0])
    }
}
