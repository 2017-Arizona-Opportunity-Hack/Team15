//
//  RelativeListViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/22/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit


class RelativeListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	var relatives: [ChildPerson] = []	
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
		if (relatives.count == 0) {
			return 1
		} else {
			return relatives.count
		}
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		let cell = tableView.dequeueReusableCell(withIdentifier: "relativeCell", for: indexPath) as! RelativeTableViewCell
		if (relatives.count == 0) {
			relatives.append(ChildPerson(newName: ""))
		} else {
			cell.nameLabel.text = relatives[indexPath.row].name
		}
		return cell
	}
	
	func addField() {
		if (relatives.count < 6) {
			relatives.append(ChildPerson(newName: ""))
			relativeTable.reloadData()
		}
	}

	func removeField() {
		if (relatives.count >= 0) {
			relatives.removeLast()
			relativeTable.reloadData()
		}
	}

override func viewDidLoad() {
		super.viewDidLoad()
		relativeTable.delegate = self
		relativeTable.dataSource = self
		relativeTable.reloadData()
		relativeTable.separatorStyle = UITableViewCellSeparatorStyle.none
		relativeTable.allowsSelection = false
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
