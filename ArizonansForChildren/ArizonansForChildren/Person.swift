//
//  Person.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/21/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import Foundation
import UIKit

class Person {
	var name: String = ""
	var id: String = ""
	var date: String = ""
	var children: [ChildPerson] = []
	var timestampIn: String = ""
	var timestampOut: String = ""
	var relatives: [ChildPerson] = []
	var parentAid: ChildPerson? = nil
	var secondParent: ChildPerson? = nil
	var found: Bool = true

	init(newName: String, newId: String, newChildren: [ChildPerson], newSupervisor: String) {
		name = newName
		id = newId
		children = newChildren
		parentAid = ChildPerson(newName: newSupervisor)
	}
	
	func addSecondParent(name: String) {
		secondParent = ChildPerson(newName: name)
	}
	
	func addParentAid(name: String) {
		parentAid = ChildPerson(newName: name)
	}
	
	func addRelative(name: String) {
		relatives.append(ChildPerson(newName: name))
	}
	
	func setTimeStampIn(newTimestamp: String) {
		timestampIn = newTimestamp
	}
	
	func setTimeStampOut(newTimestamp: String) {
		timestampOut = newTimestamp
	}
	
	
}

class ChildPerson {
	var name: String = ""
	var timestampIn: String = ""
	var timestampOut: String = ""
	var found: Bool = true
	var image = UIImage(named: "Check-Out-Button")
	
	init(newName: String) {
		name = newName
	}
	
	func setName(newName: String) {
		name = newName
	}
	
	func setTimestampIn(newTimestamp: String) {
		timestampIn = newTimestamp
	}
	
	func setTimestampOut(newTimestamp: String) {
		timestampOut = newTimestamp
	}
}
