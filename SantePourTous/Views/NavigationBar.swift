//
//  NavigationBar.swift
//  SantePourTous
//
//  Created by Saidou on 26/06/2022.
//

import SwiftUI

struct NavigationBar<LeadingItem: View, TrailingItem: View>: View {
    
    var title:String="Communautés"
    //var iconeLeading:String = ""
    //var iconeTrailing:String = ""
    var leadingItem: () -> LeadingItem?
    var trailingItem: () -> TrailingItem?
    init(title: String,
         @ViewBuilder leadingItem: @escaping () -> LeadingItem,
         @ViewBuilder trailingItem: @escaping () -> TrailingItem) {
        
        self.title = title
        self.leadingItem = leadingItem
        self.trailingItem = trailingItem
    }
    
    var body: some View {
        VStack{
            
        HStack{
            leadingItem()
            /*
            Button {
                print("")
            } label: {
                Image(systemName: iconeLeading)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.leading,10)
            }*/
            Spacer()
            Text(title)
                .foregroundColor(.white)
                .font(.title3)
            Spacer()
            
            trailingItem()
            /*
            Button {
                print("")
            } label: {
                Image(systemName: iconeTrailing)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.trailing,10)
            }
            */
        }
        .padding(.top,25)
        .padding(.vertical)
        .background(Color.primaryColor)
        Spacer(minLength: 0)
        }.edgesIgnoringSafeArea(.top)
       
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(title: "Communautés") {
            
            Button {
                print("")
            } label: {
                Image(systemName: "star")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.leading,10)
                Text("yyyyy")
            }
            
        } trailingItem: {
            Button {
                print("")
            } label: {
                Image(systemName: "star")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.leading,10)
            }
        }
    }
}
