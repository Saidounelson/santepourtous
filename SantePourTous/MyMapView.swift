//
//  MyMapView.swift
//  SantePourTous
//
//  Created by Saidou on 02/07/2022.
//

import SwiftUI
import MapKit

struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
    let name: String
}

struct MyMapView: View {
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: MapsDefaults.latitude, longitude: MapsDefaults.longitude),
        span: MKCoordinateSpan(latitudeDelta: MapsDefaults.zoom, longitudeDelta: MapsDefaults.zoom))
    
    let annotationItems = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(
            latitude: 51.508,
            longitude: -0.141),name: "Buckingham Palace"),
        
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(
            latitude: 51.508,
            longitude: -0.076),name: "Tower of London")
    ]
    
    private enum MapsDefaults {
        static let latitude = 51.5
        static let longitude = -0.12
        static let zoom = 0.2
    }
    
    var body: some View {
        VStack {
            /*
             Map(coordinateRegion: $region,
             interactionModes: .all,
             showsUserLocation: true,
             annotationItems: annotationItems) { item in
             MapMarker(coordinate: item.coordinate)
             }
             */
            NavigationView{
            Map(coordinateRegion: $region, annotationItems: annotationItems){ item in
                MapAnnotation(coordinate:item.coordinate){
                    NavigationLink{
                        Text(item.name)
                        
                    }label: {
                        Image(systemName: "mappin")
                            .resizable()
                            .frame(width: 15, height: 40)
                            .foregroundColor(.red)
                    }
                    
                }
                
            }
            .navigationTitle("Londron")
        }
        }
    }
}

struct MyMapView_Previews: PreviewProvider {
    static var previews: some View {
        MyMapView()
    }
}
