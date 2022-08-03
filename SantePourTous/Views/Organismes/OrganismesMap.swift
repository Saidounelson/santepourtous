//
//  OrganismesMap.swift
//  SantePourTous
//
//  Created by Saidou on 01/07/2022.
//

import SwiftUI
import MapKit

import Foundation

struct OrganismsModelMap:Identifiable{
    var coordinate: CLLocationCoordinate2D
    var id:Int
    var name:String
    var phone:String
    var email:String
    var adress:String
    var description:String
    var picture:String
    var icon:String
}
private enum MapDefaults {
    static let latitude = 43.296482 //43.22
    static let longitude = -5.36978 //-05.27
    static let zoom = 0.2
}


struct OrganismesMap: View {
    @State  private var searchQuery = ""
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: MapDefaults.latitude, longitude: MapDefaults.longitude),
        span: MKCoordinateSpan(latitudeDelta: MapDefaults.zoom, longitudeDelta: MapDefaults.zoom))
    //var organisms = ModelData().organism
    var organisms = [
        OrganismsModelMap(coordinate: CLLocationCoordinate2D(
            latitude: 43.2979469,
            longitude: -5.3750383), id: 3001, name: "Cara Santé Belsunce", phone: "+33491919115", email: "belsunce@gmail.com", adress: "32 Cr Belsunce", description: "Cara Santé « Canebière », centre de santé généraliste et pluridisciplinaire (dentaire, ophtalmologie, orthoptie, dermatologie) et comportant un Pôle", picture: "Belsunce", icon: ""),
         
        OrganismsModelMap(coordinate: CLLocationCoordinate2D(
            latitude: 43.6084279,
            longitude: -5.0092343), id: 3002, name: "Centre Azuréen", phone: "+33491223333", email: "centre-azureen@gmail.com", adress: "232 Bd de Sainte-Marguerite", description: "L'Institut Paoli-Calmettes est un des 18 centres régionaux de lutte contre le cancer de France, et il se situe à Marseille depuis 1923", picture: "Azureen", icon: ""),
        
        OrganismsModelMap(
        coordinate: CLLocationCoordinate2D(
            latitude: 43.279258,
            longitude: -5.4107816), id: 3003, name: "APF France handicap", phone: "+33491223333", email: "apf-france@gmail.com", adress: "279 Av. de la Capelette", description: "APF France handicap, anciennement appelé Association des paralysés de France, est créée en 1933 par quatre jeunes atteints de poliomyélite", picture: "apf", icon: ""),
        /*
        OrganismsModelMap(
        coordinate: CLLocationCoordinate2D(
            latitude: 43.2963696,
            longitude: -5.371381), id: 3004, name: "Pharmacie du Vieux Port", phone: "+33491900057", email: "pharmacie-vieux", adress: "4 Quai du Port", description: "Présentation. Bienvenue dans votre PHARMACIE DU VIEUX PORT adhérente à l'Union de Professionnels de la Pharmacie (UPP). Le pharmacien et son équipe vous", picture: "348s", icon: "")
    */
    ]
    var body: some View {
        VStack{
            Map(coordinateRegion: $region, annotationItems: organisms){ item in
                MapAnnotation(coordinate:item.coordinate){
                    
                    NavigationLink{
                        OranismesMapItem(organism:item)
                    }label: {
                        HStack{
                            Image(systemName: "mappin")
                                .resizable()
                                .frame(width: 15, height: 40)
                                .foregroundColor(.red)
                            Text(item.name)
                                .font(.system(size: 12))
                                .foregroundColor(.black)
                        }
                    }
                }
                
            }.background(Color.white)
        }
    }
}




struct OrganismesMap_Previews: PreviewProvider {
    static var previews: some View {
        OrganismesMap()
    }
}

