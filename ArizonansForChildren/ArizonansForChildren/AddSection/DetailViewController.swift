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
		let popoverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "checkInPopupID") as! PopoverViewController
		popoverVC.selectedPerson = mainParent
		self.addChildViewController(popoverVC)
		popoverVC.view.frame = self.view.frame
		self.view.addSubview(popoverVC.view)
		popoverVC.didMove(toParentViewController: self)
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
		} else if (segue.identifier == "relativeSegue") {
			if let relativeListViewController: RelativeListViewController = segue.destination as? RelativeListViewController {
				if (mainParent?.relatives != nil) {
					relativeListViewController.relatives = (mainParent?.relatives)!
				}
			}
		}
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue)
    {
        print(parent1NameField.text!)
    }

}
