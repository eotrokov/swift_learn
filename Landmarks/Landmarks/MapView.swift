//
//  MapView.swift
//  Landmarks
//
//  Created by Евгений Отроков on 01.12.2019.
//  Copyright © 2019 Евгений Отроков. All rights reserved.
//


import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D

func makeUIView(context: Context) -> MKMapView {
           MKMapView(frame: .zero)
    }

       func updateUIView(_ view: MKMapView, context: Context) {
           let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
           let region = MKCoordinateRegion(center: coordinate, span: span)
           view.setRegion(region, animated: true)
    }
}
struct MapView_Preview: PreviewProvider {
       static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
