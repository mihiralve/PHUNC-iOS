//
//  TransportationVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 2/18/18.
//  Copyright © 2018 PSIADA. All rights reserved.
//

import UIKit
import SDWebImage
import MapKit

class TransportationVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    private let locationManager = CLLocationManager()
    private var currentCoordinate: CLLocationCoordinate2D?
    
    
    override func viewDidLoad() {
        configureLocationServices()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func configureLocationServices(){
        locationManager.delegate = self
        
        let status = CLLocationManager.authorizationStatus()
        
        if status == .notDetermined {
            
            locationManager.requestWhenInUseAuthorization()
            
        } else if status == .authorizedWhenInUse {
            
            mapView.showsUserLocation = true
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
            
        }
        
    }
    
    private func beginLocationUpdates(locationManager: CLLocationManager) {
        mapView.showsUserLocation = true
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    private func zoomToLatestLocation(with coordinate: CLLocationCoordinate2D) {
        
        let zoomRegion = MKCoordinateRegion(center: coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        
        mapView.setRegion(zoomRegion, animated: true)
        
    }

}


extension TransportationVC: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let latestLocation = locations.first else {return}
        
        if currentCoordinate == nil{
            zoomToLatestLocation(with: latestLocation.coordinate)
        }
        
        currentCoordinate = latestLocation.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        beginLocationUpdates(locationManager: manager)
    }
    
}

