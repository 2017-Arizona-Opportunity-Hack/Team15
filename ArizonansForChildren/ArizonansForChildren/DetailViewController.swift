//
//  DetailViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/21/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

	var mainParent: Person?
	
	@IBAction func submitButton(_ sender: Any) {
		
	}
	@IBOutlet weak var child1NameField: UITextField!
	@IBOutlet weak var parent1NameField: UITextField!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		if (mainParent != nil && mainParent?.name != nil && mainParent?.children != nil) {
			parent1NameField.text = mainParent?.name
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if (segue.identifier == "childSegue") {
			if let childListViewController: ChildListViewController = segue.destination as? ChildListViewController {
				if (mainParent?.children != nil) {
					childListViewController.children = (mainParent?.children)!
				} else {
					print("ERROR: No children exist for parent")
				}
			}
		}
    }

}
