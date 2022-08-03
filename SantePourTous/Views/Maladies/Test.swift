//
//  Test.swift
//  SantePourTous
//
//  Created by Saidou on 28/06/2022.
//

import SwiftUI

struct Test: View {
    var nom="Saidou"
    var body: some View {
        VStack {
            Text(nom)
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
