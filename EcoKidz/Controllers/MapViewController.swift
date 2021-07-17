//
//  MapViewController.swift
//  EcoKidz
//
//  Created by admin on 2021-07-17.
//

import UIKit
import MapKit

struct RecyclingCenter {
    var name: String
    var subname: String
    var location: CLLocationCoordinate2D
    init(_ name: String, _ subname: String, _ location: CLLocationCoordinate2D) {
        self.name = name
        self.subname = subname
        self.location = location
    }
}

class MapEnvironmentViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    let defaultFont = UIFont(name: "Poppins-Medium", size: 16)
    let bold18Font = UIFont(name: "Poppins-Bold", size: 18)
    let semiBold18Font = UIFont(name: "Poppins-SemiBold", size: 18)
    let myGreenColor = UIColor(red: 0.0, green: 0.3490, blue: 0.647, alpha: 1) // 59B0A5
    let myYellowColor = UIColor(red: 0.945, green: 0.8235, blue: 0.31765, alpha: 1)
    @IBOutlet weak var bookAvisitButton: UIButton!
    
    
 
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!

    let locationManager = CLLocationManager()
    let initialLocation = CLLocation(latitude: 14.651419, longitude: 121.049271)
    let baseCoordinate = CLLocationCoordinate2DMake(14.651419, 121.049271)
    var  recyclingPoints =  [RecyclingCenter("Carpel Recycling Center","Makati",CLLocationCoordinate2DMake( 14.656494,  121.0482644)), RecyclingCenter("Philippine Recycling Center","Quezon City",CLLocationCoordinate2DMake( 14.641540,  121.05810)), RecyclingCenter("Dang Jen Junk Shop","Valenzuela City",CLLocationCoordinate2DMake( 14.6500,  121.043))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.instructionLabel.font = semiBold18Font
        self.instructionLabel.textColor = UIColor(ciColor: .white)
        self.locationManager.requestAlwaysAuthorization()

        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()

        self.bookAvisitButton.layer.cornerRadius = self.bookAvisitButton.frame.height / 2
        
        self.bookAvisitButton.titleLabel?.font = semiBold18Font
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }

        mapView.delegate = self
        mapView.mapType = .standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true

        if let coor = mapView.userLocation.location?.coordinate{
            mapView.setCenter(coor, animated: true)
        }
        
      
        // Set initial location in QC Memorial Circle
        setupMap()
        for RC in recyclingPoints {
            addAnnotation(coordinate: RC.location, title: RC.name, tintColor: UIColor(ciColor: .red))
        }
    
    }

    func addAnnotation(coordinate:CLLocationCoordinate2D, title: String, tintColor: UIColor){
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = title
        mapView.addAnnotation(annotation)
    }

    func setupMap(){
        let region = MKCoordinateRegion(center: self.baseCoordinate, latitudinalMeters: 2500, longitudinalMeters: 2500)
        mapView.region = region
    }

}
