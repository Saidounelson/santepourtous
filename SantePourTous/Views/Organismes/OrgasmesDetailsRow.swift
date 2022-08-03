//
//  OrgasmesDetailsRow.swift
//  SantePourTous
//
//  Created by Saidou on 02/07/2022.
//

import SwiftUI

struct OrgasmesDetailsRow: View {
    var organism : Organisms
    var body: some View {
        
        VStack {
            HStack{
                ZStack {
                    Circle()
                        .foregroundColor(.secondeyColor)
                    Image(organism.picture)
                        .resizable()
                        .frame(maxWidth: 200,  maxHeight: 200)
                        .foregroundColor(.primaryColor)
                }.foregroundColor(.gray)
            }.padding()
            
                Text(organism.name)
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .frame(maxWidth: .infinity,alignment:.center)
                    .padding()
                Text(organism.description)
                    .font(.system(size: 20))
                HStack{
                    Image(systemName: "map")
                        .resizable()
                        .frame(width: 15, height: 30)
                        .foregroundColor(.red)
                    Text("Adresse: ")
                        .font(.title2)
                        .bold()
                    
                    Text(organism.adress)
                        .font(.title2)
                        
                }.padding()
                Button(action: {
                    let phone = "tel://"
                    let phoneNumberformatted = phone + organism.phone
                    guard let url = URL(string: phoneNumberformatted) else { return }
                    UIApplication.shared.open(url)
                }) {
                    Text("Contactez-nous")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxHeight:50)
                }
                .background(Color.primaryColor)
                .cornerRadius(8)
                .padding()
           
        }.padding()
    }
}

struct OrgasmesDetailsRow_Previews: PreviewProvider {
    static var organism = ModelData().organism
    static var previews: some View {
        OrgasmesDetailsRow(organism: organism[0])
    }
}
