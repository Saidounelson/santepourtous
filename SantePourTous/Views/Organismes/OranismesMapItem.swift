//
//  OranismesMapItem.swift
//  SantePourTous
//
//  Created by Saidou on 02/07/2022.
//

import SwiftUI
import MapKit

import Foundation
struct OranismesMapItem: View {
    var organism: OrganismsModelMap

    var body: some View {
        VStack {
            HStack{
                ZStack {
                    Circle()
                        .foregroundColor(.secondeyColor)
                        .frame(maxWidth: 300,  maxHeight: 300)
                    Image(organism.picture)
                        .resizable()
                        .frame(maxWidth: 250,  maxHeight: 150)
                        .foregroundColor(.primaryColor)
                }
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
                            .foregroundColor(.primaryColor)
                        Text("Adresse: ")
                            .font(.title2)
                            .bold()
                        Spacer()
                        Text(organism.adress)
                            .font(.title2)
                            
                }.padding()
                HStack{
                        Image(systemName: "phone")
                            .resizable()
                            .frame(width: 15, height: 30)
                            .foregroundColor(.primaryColor)
                        Text("Email:")
                            .font(.title2)
                            .bold()
                        Spacer()
                        Text(organism.email)
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

struct OranismesMapItem_Previews: PreviewProvider {
    static var previews: some View {
        OranismesMapItem(organism:OrganismsModelMap(coordinate: CLLocationCoordinate2D(
            latitude: 51.508,
            longitude: -0.141), id:3001, name: "Cantre 1", phone: "", email: "", adress: "", description: "", picture: "", icon: ""))
    }
}
