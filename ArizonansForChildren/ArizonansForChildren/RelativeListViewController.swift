//
//  RelativeListViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/22/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class RelativeListViewController: UIViewController {
	/*
	var parents: [] = []
	
	@IBOutlet weak var relativeTable: UITableView!
	
	@IBAction func addParentFieldImage(_ sender: UIButton) {
		addField()
	}
	@IBAction func addParentFieldButton(_ sender: UIButton) {
		addField()
	}
	@IBAction func removeParentFieldImage(_ sender: UIButton) {
		removeField()
	}
	@IBAction func removeParentFieldButton(_ sender: UIButton) {
		removeField()
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// If count is 0, no parents have been added show only one row
		if (parents.count == 0) {
			return 1
		} else {
			return parents.count
		}
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "parentCell", for: indexPath) as! ParentAddTableViewCell
		if (parents.count == 0) {
			parents.append(Person(newName: "", newId: "", newChildren: [ChildPerson(newName: "")], newFound: true))
		} else {
			cell.nameLabel.text = parents[indexPath.row].name
		}
		return cell
	}
	
	func addField() {
		if (rel.count < 2) {
			parents.append(Person(newName: "", newId: "", newChildren: [ChildPerson(newName: "")], newFound: true))
			parentsTable.reloadData()
		}
	}
	
	func removeField() {
		if (parents.count > 1) {
			parents.removeLast()
			parentsTable.reloadData()
		}
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		parentsTable.delegate = self
		parentsTable.dataSource = self
		parentsTable.reloadData()
		parentsTable.separatorStyle = UITableViewCellSeparatorStyle.none
		parentsTable.allowsSelection = false
	}
*/

    override func viewDidLoad() {
        super.viewDidLoad()
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
