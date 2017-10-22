//
//  Person.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/21/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import Foundation

class Person {
	var name: String = ""
	var found: Bool = true
	var id: String = ""
	var children: [Child] = []
	var timestampIn: String = ""
	var timestampOut: String = ""
	
	init(newName: String, newId: String, newChildren: [Child], newFound: Bool) {
		name = newName
		found = newFound
		id = newId
		children = newChildren
	}
}

class Child {
	var name: String = ""
	var timestampIn: String = ""
	var timestampOut: String = ""
	
	init(newName: String) {
		name = newName
	}
	
	func setTimestampIn(newTimestamp: String) {
		timestampIn = newTimestamp
	}
	
	func setTimestampOut(newTimestamp: String) {
		timestampOut = newTimestamp
	}
}
