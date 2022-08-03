//
//  OrganismesList.swift
//  SantePourTous
//
//  Created by Saidou on 01/07/2022.
//

import SwiftUI

struct OrganismesList: View {
    var organisms = ModelData().organism
    var body: some View {
        VStack {
            List{
                ForEach(organisms) { organism in
                    NavigationLink {
                        OrganismesListItem(organism:organism)
                    }label: {
                        OrganismRow(organism: organism)
                    }
                    
                }
            }
        }
        Spacer()
    }
}
/*
struct OrganismesList_Previews: PreviewProvider {
    static var previews: some View {
        OrganismesList()
    }
}
*/
