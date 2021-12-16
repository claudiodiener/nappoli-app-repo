//
//  MapView.swift
//  Nappoli
//
//  Created by Claudio Diener on 11/12/21.
//

import SwiftUI
import MapKit

@available(iOS 15.0, *)
struct MapView: View {
    @StateObject var model = ModelData()
    @State private var showingSheet = false
    var region =  MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.836_167, longitude: 14.249_557),
        span: MKCoordinateSpan(latitudeDelta: 0.160, longitudeDelta: 0.160)
    )

    var body: some View {
        ZStack {
            MapLocation(region: self.region, places: ModelData().places)
            VStack {
                Spacer()
                ScrollView(.horizontal) {
                    HStack {
                        CardsSheet()
                    }
                }
            }
        }
    }
}

@available(iOS 15.0, *)
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
