//
//  OrganismRow.swift
//  SantePourTous
//
//  Created by Giraud Aymrick on 28/06/2022.
//

import SwiftUI

import SwiftUI

struct OrganismRow: View {
    var organism : Organisms
    var body: some View {
            HStack(alignment:.top){
                ZStack {
                    Image(systemName: organism.icon)
                        .resizable()
                        .frame(maxWidth: 30,  maxHeight: 30)
                        .foregroundColor(.primaryColor)
                }.foregroundColor(.gray)
                VStack {
                    Text(organism.name)
                        .font(.title2)
                        .foregroundColor(.black)
                        .bold()
                        .frame(maxWidth: .infinity,alignment:.leading)
                    Text(organism.description)
                }
            }.padding()
    }
}

struct OrganismRow_Previews: PreviewProvider {
    static var organism = ModelData().organism
    static var previews: some View {
        OrganismRow(organism: organism[0])
    }
}
