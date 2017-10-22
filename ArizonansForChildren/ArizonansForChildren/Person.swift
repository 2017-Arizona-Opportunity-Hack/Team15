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
	
	init(newName: String, newId: String, newFound: Bool) {
		name = newName
		found = newFound
		id = newId
	}
}
