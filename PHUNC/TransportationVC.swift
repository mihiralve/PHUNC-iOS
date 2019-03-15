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
        
        let zoomRegion = MKCoordinateRegion(center: coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
        
        mapView.setRegion(zoomRegion, animated: true)
        
    }
    
    private func addAnnotations() {
        
        let businessBuildAnnotation = MKPointAnnotation()
        businessBuildAnnotation.title = "Business Building"
        businessBuildAnnotation.coordinate = CLLocationCoordinate2D(latitude: 40.803895, longitude: -77.865213)
        
        let envyAnnotation = MKPointAnnotation()
        envyAnnotation.title = "Envy"
        envyAnnotation.coordinate = CLLocationCoordinate2D(latitude: 40.798221, longitude: -77.856230)
        
        let radissonAnnotation = MKPointAnnotation()
        radissonAnnotation.title = "Radisson"
        radissonAnnotation.coordinate = CLLocationCoordinate2D(latitude: 40.810985, longitude: -77.832877)
        
        let super8Annotation = MKPointAnnotation()
        super8Annotation.title = "Super 8"
        super8Annotation.coordinate = CLLocationCoordinate2D(latitude: 40.786302, longitude: -77.834840)
        
        mapView.addAnnotation(businessBuildAnnotation)
        mapView.addAnnotation(envyAnnotation)
        mapView.addAnnotation(radissonAnnotation)
        mapView.addAnnotation(super8Annotation)
    }

}


extension TransportationVC: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let latestLocation = locations.first else {return}
        
        if currentCoordinate == nil{
            zoomToLatestLocation(with: latestLocation.coordinate)
            addAnnotations()
        }
        
        currentCoordinate = latestLocation.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        beginLocationUpdates(locationManager: manager)
    }
    
}

