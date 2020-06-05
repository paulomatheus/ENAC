//
//  CompleteMapsViewController.swift
//  teste04
//
//  Created by Paulo Matheus on 13/09/2018.
//  Copyright © 2018 Paulo Matheus. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class CompleteMapsViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mvCompleteMap: MKMapView!
	@IBOutlet weak var btApp: UIBarButtonItem!
    @IBOutlet weak var btAppleMaps: UIButton!
    
    
	//Apple Maps
    let initialLocation = CLLocation(latitude: -22.2562, longitude: -45.6955)
    let regionRadius: CLLocationDistance = 200
	let locationManager: CLLocationManager = CLLocationManager()
	var lastUserLocation: MKUserLocation?
	let manager = CLLocationManager()
	
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mvCompleteMap.setRegion(coordinateRegion, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(location: initialLocation)
		locationManager.delegate = self
		locationManager.requestWhenInUseAuthorization()
		locationManager.startUpdatingLocation()
		//Colocar pins no mapa
		let predio1 = Buildings(title: "Prédio 1",
								locationName: "Salas de aula",
								discipline: "Prédio",
								coordinate: CLLocationCoordinate2D(latitude: -22.2574, longitude: -45.6960))
		mvCompleteMap.addAnnotation(predio1)
		let predio2 = Buildings(title: "Prédio 2",
								locationName: "Laboratórios",
								discipline: "Prédio",
								coordinate: CLLocationCoordinate2D(latitude: -22.2567, longitude: -45.6957))
		mvCompleteMap.addAnnotation(predio2)
		let predio3 = Buildings(title: "Prédio 3",
								locationName: "Laboratórios",
								discipline: "Prédio",
								coordinate: CLLocationCoordinate2D(latitude: -22.2564, longitude: -45.6957))
		mvCompleteMap.addAnnotation(predio3)
		let predio4 = Buildings(title: "Prédio 4",
							  locationName: "Laboratórios",
							  discipline: "Prédio",
							  coordinate: CLLocationCoordinate2D(latitude: -22.2562, longitude: -45.6955))
		mvCompleteMap.addAnnotation(predio4)
		let predio5 = Buildings(title: "Prédio 5",
								locationName: "Teatro",
								discipline: "Prédio",
								coordinate: CLLocationCoordinate2D(latitude: -22.2565, longitude: -45.6951))
		mvCompleteMap.addAnnotation(predio5)
		let predio6 = Buildings(title: "Prédio 6",
								locationName: "Pesquisa e Desenvolvimento",
								discipline: "Pesquisa e Desenvolvimento",
								coordinate: CLLocationCoordinate2D(latitude: -22.2572, longitude: -45.6972))
		mvCompleteMap.addAnnotation(predio6)
		let nemp = Buildings(title: "NEMP",
								locationName: "Incubadora",
								discipline: "Incubadora",
								coordinate: CLLocationCoordinate2D(latitude: -22.2560, longitude: -45.6952))
		mvCompleteMap.addAnnotation(nemp)
		let prediocentral = Buildings(title: "Prédio Central",
								locationName: "Inatel",
								discipline: "Prédio",
								coordinate: CLLocationCoordinate2D(latitude: -22.2573, longitude: -45.6964))
		mvCompleteMap.addAnnotation(prediocentral)
        let etefmc = Buildings(title: "ETE FMC",
                                      locationName: "Alojamento feminino",
                                      discipline: "Escola Técnica",
                                      coordinate: CLLocationCoordinate2D(latitude: -22.2576, longitude: -45.7031))
        mvCompleteMap.addAnnotation(etefmc)
        let ginasio = Buildings(title: "Ginásio",
                               locationName: "Alojamento masculino",
                               discipline: "Ginásio",
                               coordinate: CLLocationCoordinate2D(latitude: -22.2566, longitude: -45.6942))
        mvCompleteMap.addAnnotation(ginasio)
        let arealazer = Buildings(title: "Área de lazer",
                               locationName: "Refeitório",
                               discipline: "Inatel",
                               coordinate: CLLocationCoordinate2D(latitude: -22.2566, longitude: -45.6939))
        mvCompleteMap.addAnnotation(arealazer)
        let da = Buildings(title: "D.A.",
                                  locationName: "Diretório Acadêmico",
                                  discipline: "Inatel",
                                  coordinate: CLLocationCoordinate2D(latitude: -22.2569, longitude: -45.6972))
        mvCompleteMap.addAnnotation(da)
		let cantina = Buildings(title: "Cantina",
						   locationName: "Piso térreo",
						   discipline: "Inatel",
						   coordinate: CLLocationCoordinate2D(latitude: -22.2569, longitude: -45.6957))
		mvCompleteMap.addAnnotation(cantina)


		
		
        //Comando para deixar a fonte em negrito
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.heavy)
        ]
        // Do any additional setup after loading the view.
    }
	
   
    @IBAction func btUserLocation(_ sender: UIButton) {
        locationManager.startUpdatingLocation()
		locationManagerFunc(locationManager, didUpdateLocations: [initialLocation])
    }
    
    @IBAction func openAppleMaps(_ sender: UIButton) {
        openMapForPlace()
    }
    
	private func locationManagerFunc(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //Access the last object from locations to get perfect current location
        if let location = locations.last {
            let span = MKCoordinateSpan(latitudeDelta: 0.00775, longitudeDelta: 0.00775)
            let myLocation = CLLocationCoordinate2DMake(location.coordinate.latitude,location.coordinate.longitude)
            let region = MKCoordinateRegion(center: myLocation, span: span)
            mvCompleteMap.setRegion(region, animated: true)
        }
        self.mvCompleteMap.showsUserLocation = true
        manager.stopUpdatingLocation()
    }
    
	//openMapForPlace()
	//Funcão para abrir o app Maps
	func openMapForPlace() {
		
		let latitude1: CLLocationDegrees = -22.2562
		let longitude1: CLLocationDegrees = -45.6955
        
        let latitude2: CLLocationDegrees = -22.2576
        let longitude2: CLLocationDegrees = -45.7031
		
		let regionDistance: CLLocationDistance = 16
		let coordinates1 = CLLocationCoordinate2DMake(latitude1, longitude1)
        let coordinates2 = CLLocationCoordinate2DMake(latitude2, longitude2)
		let regionSpan1 = MKCoordinateRegion(center: coordinates1, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let regionSpan2 = MKCoordinateRegion(center: coordinates2, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
		let options1 = [
			MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan1.center),
			MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan1.span)
		]
		let options2 = [
			MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan2.center),
			MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan2.span)
		]
		let placemark1 = MKPlacemark(coordinate: coordinates1, addressDictionary: nil)
        let placemark2 = MKPlacemark(coordinate: coordinates2, addressDictionary: nil)
		let mapItem1 = MKMapItem(placemark: placemark1)
        let mapItem2 = MKMapItem(placemark: placemark2)
		mapItem1.name = "Inatel"
        mapItem2.name = "ETE FMC"
		mapItem1.openInMaps(launchOptions: options1)
		mapItem2.openInMaps(launchOptions: options2)
	}
	
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
