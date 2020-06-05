//
//  LocationsMaps.swift
//  teste04
//
//  Created by Paulo Matheus on 20/10/2018.
//  Copyright © 2018 Paulo Matheus. All rights reserved.
//

import Foundation
import MapKit

class Buildings: NSObject, MKAnnotation {
	let title: String?
	let locationName: String
	let discipline: String
	let coordinate: CLLocationCoordinate2D
	
	init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
		self.title = title
		self.locationName = locationName
		self.discipline = discipline
		self.coordinate = coordinate
		
		super.init()
	}
	
	var subtitle: String? {
		return locationName
	}
}

