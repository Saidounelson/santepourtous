//
//  Colors.swift
//  SantePourTous
//
//  Created by Saidou on 24/06/2022.
//

import Foundation
import SwiftUI

extension Color{
    //static let primaryColor = Color(red: 0.22745098039215686, green: 0.5882352941176471, blue: 0.12549019607843137)
    static let primaryColor = Color(.systemGreen)
    // static let titlePrimaryColor = .systemGreen
    static let secondeyColor = Color(red: 0.551, green: 0.881, blue: 1.002)
}

extension UIApplication{
    static let appWindowTo = UIApplication
        .shared
        .connectedScenes
        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
        .first { $0.isKeyWindow }?.safeAreaInsets.top
}
