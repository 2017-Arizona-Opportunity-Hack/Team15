//
//  ChildListViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/21/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class ChildListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	@IBAction func addChildFieldButton(_ sender: UIButton) {
		addField()
	}
	@IBAction func addChildFieldImage(_ sender: UIButton) {
		addField()
	}
	@IBAction func removeChildFieldImage(_ sender: UIButton) {
		removeField()
	}
	@IBAction func removeChildFieldButton(_ sender: UIButton) {
		removeField()
	}
	var children: [ChildPerson] = []
	
	@IBOutlet weak var childrenTable: UITableView!
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// If count is 0, no children have been added show only one row
		if (children.count == 0) {
			return 1
		} else {
			return children.count
		}
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "childCell", for: indexPath) as! ChildTableViewCell
		if (children.count == 0) {
			children.append(ChildPerson(newName: ""))
		} else {
			cell.childNameField.text = children[indexPath.row].name
		}
		return cell
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		childrenTable.delegate = self
		childrenTable.dataSource = self
		childrenTable.reloadData()
		childrenTable.separatorStyle = UITableViewCellSeparatorStyle.none
		childrenTable.allowsSelection = false
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func addField() {
		children.append(ChildPerson(newName: ""))
		childrenTable.reloadData()
	}
	
	func removeField() {
		if (children.count > 1) {
			children.removeLast()
			childrenTable.reloadData()
		}
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
