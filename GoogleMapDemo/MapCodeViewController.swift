//
//  MapCodeViewController.swift
//  GoogleMapDemo
//
//  Created by Tanveer Prottoy on 10/3/20.
//  Copyright © 2020 Tanveer Prottoy. All rights reserved.
//

import UIKit
import GoogleMaps

class MapCodeViewController: UIViewController {

    override func loadView() {
      // Create a GMSCameraPosition that tells the map to display the
      // coordinate -33.86,151.20 at zoom level 6.
      let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
      let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
      view = mapView

      // Creates a marker in the center of the map.
      let marker = GMSMarker()
      marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
      marker.title = "Sydney"
      marker.snippet = "Australia"
      marker.map = mapView
    }
}
