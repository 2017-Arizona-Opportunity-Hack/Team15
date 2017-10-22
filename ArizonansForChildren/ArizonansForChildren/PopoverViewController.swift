//
//  PopoverViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/21/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController {

	var selectedPerson: Person?

	@IBOutlet weak var viewLayer: UIView!
	@IBAction func doneSaveCheckin(_ sender: Any) {
		self.removeAnimate()
	}
	
	func showAnimate() {
		self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
		self.view.alpha = 0.0
		UIView.animate(withDuration: 0.35, animations: {
			self.view.alpha = 1.0
			self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
		})
	}
	
	func removeAnimate() {
		UIView.animate(withDuration: 0.35, animations: {
			self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
			self.view.alpha = 0.0
		}, completion:{(finished : Bool) in
			if (finished) {
				self.view.removeFromSuperview()
			}
		})
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()
		viewLayer.layer.cornerRadius = 20
		self.view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
		self.showAnimate()
    }
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
	
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if (segue.identifier == "childCheckSegue") {
			if let generalChildVC: GeneralChildTableViewController = segue.destination as? GeneralChildTableViewController {
				generalChildVC.selectedPerson = selectedPerson
			}
		} else if (segue.identifier == "parentCheckSegue") {
			if let generalParentVC: GeneralTableViewController = segue.destination as? GeneralTableViewController {
				generalParentVC.selectedPerson = selectedPerson
			}
		} else if (segue.identifier == "relativeCheckSegue") {
			if let generalRelativeVC: GeneralRelativeTableViewController = segue.destination as? GeneralRelativeTableViewController {
				generalRelativeVC.selectedPerson = selectedPerson
			}
		} else if (segue.identifier == "supervisorCheckSegue") {
			if let generalSupervisorVC: GeneralSupervisorTableViewController = segue.destination as? GeneralSupervisorTableViewController {
				generalSupervisorVC.selectedPerson = selectedPerson
			}
		}
    }

}
