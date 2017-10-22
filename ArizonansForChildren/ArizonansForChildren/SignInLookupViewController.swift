//
//  SignInLookupViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/21/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class SignInLookupViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	var names: [Person] = []
	var narrowedNames: [String] = []
	
	@IBOutlet weak var addButton: UIButton!
	@IBOutlet weak var addLabel: UILabel!
	@IBOutlet weak var resultsTableView: UITableView!
	@IBOutlet var nameSearched: UITextField!
	
	@IBAction func searchNameChanged(_ sender: UITextField) {
		for currentName in names {
			let found = (currentName.name.lowercased()).contains(nameSearched.text!.lowercased())
			if (!found) {
				currentName.found = false
			} else {
				currentName.found = true
			}
			if (nameSearched.text! == "") {
				currentName.found = true
			}
		}
		names.sort { $0.found == $1.found ? $0.name < $1.name : $0.found && !$1.found }
		resultsTableView.reloadData();
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		resultsTableView.dataSource = self
		resultsTableView.delegate = self
		resultsTableView.separatorStyle = UITableViewCellSeparatorStyle.none
		let p1 = Person(newName: "Tori", newId: "0", newFound: true)
		let p2 = Person(newName: "Andreas", newId: "0", newFound: true)
		let p3 = Person(newName: "Westin", newId: "0", newFound: true)
		let p4 = Person(newName: "Dan", newId: "0", newFound: true)
		let p5 = Person(newName: "Danny", newId: "0", newFound: true)
		let p6 = Person(newName: "Diego", newId: "0", newFound: true)
		
		names.append(p1)
		names.append(p2)
		names.append(p3)
		names.append(p4)
		names.append(p5)
		names.append(p6)
		names.append(p1)
		names.append(p1)
		names.append(p1)
		names.append(p1)
		names.append(p1)
		names.append(p1)
		names.append(p1)
		names.append(p1)
		names.append(p1)
		names.append(p1)
		names.append(p1)
		names.append(p1)
		
		names.sort { $0.found == $1.found ? $0.name < $1.name : $0.found && !$1.found }
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return names.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! ParentTableViewCell
		cell.nameLabel.text = names[indexPath.row].name
		if (!names[indexPath.row].found) {
			cell.isHidden = true
		}
		return cell
	}
}
