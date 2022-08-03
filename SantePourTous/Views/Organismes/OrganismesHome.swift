//
//  OrganismesHome.swift
//  SantePourTous
//
//  Created by Saidou on 01/07/2022.
//

import SwiftUI

struct OrganismesHome: View {
    

    @State private var mySelection = "Map"
    var options = ["Map","Liste"]
    init(){
        navigationBarAppearance()
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.systemGreen
        let attributes:[NSAttributedString.Key:Any] = [
            .foregroundColor:UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        NavigationView {
            VStack{
                
                Picker("Selection", selection: $mySelection){
                    ForEach(options, id: \.self){
                        Text($0)
                    }
                }.pickerStyle(.segmented)
                    .padding()
                Spacer()
                if mySelection == "Liste"{
                    OrganismesList()
                }else{
                    OrganismesMap()
                }
                
            }
            .navigationTitle("Organismes")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct OrganismesHome_Previews: PreviewProvider {
    static var previews: some View {
        OrganismesHome()
    }
}
