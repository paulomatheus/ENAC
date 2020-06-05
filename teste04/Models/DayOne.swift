//
//  DayOne.swift
//  teste04
//
//  Created by Paulo Matheus on 12/10/2018.
//  Copyright © 2018 Paulo Matheus. All rights reserved.
//

import Foundation

struct DayOne: Codable { //Encodable, Decodable
	
	let name: String
	let completeName: String
	let type: String
	let startTime: String
	let finishedTime: String
	let group: String
	let speaker: String
	let info: String
	let day: String
	
	var nameFormatted: String {
		return name
	}
	
	var completeNameFormatted: String {
		return completeName
	}
	
	var typeFormatted: String {
		return type
	}
	var startTimeFormatted: String {
		return startTime
	}
	
	var finishedTimeFormatted: String {
		return finishedTime
	}
	var groupFormatted: String {
		return group
	}
	
	var speakerFormatted: String {
		return speaker
	}
	
	var infoFormatted: String {
		return info
	}
	
	var dayFormatted: String {
		return day
	}
}


