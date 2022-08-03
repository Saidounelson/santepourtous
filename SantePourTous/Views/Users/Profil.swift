//
//  Profil.swift
//  SantePourTous
//
//  Created by Saidou on 01/07/2022.
//

import SwiftUI

struct Profil: View {
    
    var usersId:Int=1001
    var name:String = "Ziad"
    var size:String = "183 cm"
    var birthDay:String = "27/02/1989"
//  var phone:String = ""
    var weight:String = "89.0 Kg"
    var blood:String = "A+"
    //var users:Users
    var body: some View {
        
            VStack{
                
                Image("Zaid")
                    .resizable()
                    .clipShape(Circle())
                    .frame(maxWidth: 100,  maxHeight: 100)
                Text("Ziad")
                Text ("Mes informations")
                    .font(.largeTitle)
                    .bold()
                
                Form{
                HStack{
                    Text("Nom")
                        .foregroundColor(Color.black)
                        .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text(name)
                }.padding()
                HStack{
                        Text("Date de naissance")
                        Spacer()
                    Text(birthDay)
                }.padding()
                HStack{
                    Text("Groupe Sanguin")
                    Spacer()
                    Text(blood)
                        .padding(-2.0)
                   
                }.padding()
                HStack{
                    Text("Poids")
                    Spacer()
                    Text(weight)
               
                }.padding()
                HStack{
                    Text("Taille")
                    Spacer()
                    Text(size)
               
                }.padding()
                    
                VStack {
                    Text("Contacts d'urgence")
                        .font(.title2)
                        .bold()
                        .padding()
                    
                    HStack{
                        Image(systemName: "star")
                            .foregroundColor(Color.green)
                            .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                        Text("Lien")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                        Text("Ami")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack{ Text("Vincent Carter")
                            Text("+3367890966")}
                    }.padding(.leading,1)
                    
                    HStack{
                            Image(systemName: "star")
                                .foregroundColor(Color/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                                .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                            Text("Lien")
                            .foregroundColor(.green)
                            Text("Papa")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                            Spacer()
                        VStack{
                            Text("Steve Jobs")
                            Text("+33630070073")
                        }.padding(.leading,1)
                    }
                
                }.padding()
                    
                }
                
            }.padding()
    }
}

struct Profil_Previews: PreviewProvider {
    static var previews: some View {
        Profil(usersId: 12 , size: "183 cm", birthDay:"27/02/1989", weight:"89.0 Kg", blood:"A+")    }
}
