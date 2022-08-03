//
//  MaladieRow.swift
//  SantePourTous
//
//  Created by Saidou on 27/06/2022.
//

import SwiftUI

struct MaladieRow: View {
    var sickness: Sickness
    var body: some View {
            HStack(alignment:.top){
                ZStack {
                    Image(systemName: sickness.icone)
                        .resizable()
                        .frame(maxWidth: 30,  maxHeight: 30)
                        .foregroundColor(.primaryColor)
                    
                }.foregroundColor(.gray)
                VStack {
                    Text(sickness.name)
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity,alignment:.leading)
                    Text(sickness.description) 
                }
            }.padding()
            
        
    }
}

struct MaladieRow_Previews: PreviewProvider {
    static var sicknes = ModelData().sicknes
    static var previews: some View {
        MaladieRow(sickness: sicknes[0])
    }
}
