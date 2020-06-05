//
//  DataStore.swift
//  teste04
//
//  Created by Paulo Matheus on 26/10/2018.
//  Copyright © 2018 Paulo Matheus. All rights reserved.
//

import Foundation
import UIKit

final class DataStore{
	static let sharedInstance = DataStore()
	fileprivate init() {}
	
	var images: [UIImage] = []
	
	func getBooks(completion: @escaping () -> Void) {
		
	}
}

struct DataImage: Codable {
	let partnerName: String
}
