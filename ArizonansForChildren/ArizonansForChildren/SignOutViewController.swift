//
//  SignOutViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/22/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class SignOutViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	

	var names: [Person] = []
	
	@IBAction func doneButton(_ sender: UIButton) {
		
	}
	@IBOutlet weak var resultsTableView: UITableView!
	@IBOutlet weak var nameSearched: UITextField!
	
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
		resultsTableView.allowsSelection = false
		resultsTableView.separatorStyle = UITableViewCellSeparatorStyle.none
		names.sort { $0.found == $1.found ? $0.name < $1.name : $0.found && !$1.found }
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		view.endEditing(true)
		self.nameSearched.resignFirstResponder()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return names.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! SignOutTableViewCell
		cell.nameLabel.text = names[indexPath.row].name
		if (!names[indexPath.row].found) {
			cell.isHidden = true
		}
		return cell
	}
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/
	
}
