//
//  ChildListViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/21/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class ChildListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	var children: [Child] = []
	
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
			cell.childNameField.text = ""
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
