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
		let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! ParentTableViewCell
		cell.nameLabel.text = names[indexPath.row].name
		if (!names[indexPath.row].found) {
			cell.isHidden = true
		}
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let popoverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "checkInPopupID") as! PopoverViewController
		popoverVC.selectedPerson = names[indexPath.row]
		self.addChildViewController(popoverVC)
		popoverVC.view.frame = self.view.frame
		self.view.addSubview(popoverVC.view)
		popoverVC.didMove(toParentViewController: self)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if (segue.identifier == "existsSegue") {
			if let detailViewController: DetailViewController = segue.destination as? DetailViewController {
				let selectedIndex: IndexPath = self.resultsTableView.indexPath(for: sender as! UITableViewCell)!
				
				detailViewController.mainParent = names[selectedIndex.row]
			}
		}
	}
}
