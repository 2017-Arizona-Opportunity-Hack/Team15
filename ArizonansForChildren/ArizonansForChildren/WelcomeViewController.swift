//
//  WelcomeViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/21/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
	
	var names: [Person] = []
	
    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.hidesBackButton = true
		let c1 = ChildPerson(newName: "Steven")
		let c2 = ChildPerson(newName: "Bob")
		
		let p1 = Person(newName: "Tori", newId: "0", newChildren: [c1, c2], newSupervisor: "Test Super")
		let p2 = Person(newName: "Andreas", newId: "0", newChildren: [c1, c2], newSupervisor: "Test Super")
		let p3 = Person(newName: "Westin", newId: "0", newChildren: [c1, c2], newSupervisor: "Test Super")
		let p4 = Person(newName: "Dan", newId: "0", newChildren: [c1, c2], newSupervisor: "Test Super")
		let p5 = Person(newName: "Danny", newId: "0", newChildren: [c1, c2], newSupervisor: "Test Super")
		let p6 = Person(newName: "Diego", newId: "0", newChildren: [c1, c2], newSupervisor: "Test Super")
		
		names.append(p1)
		names.append(p2)
		names.append(p3)
		names.append(p4)
		names.append(p5)
		names.append(p6)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if (segue.identifier == "signinSegue") {
			if let signInViewController: SignInLookupViewController = segue.destination as? SignInLookupViewController {
				signInViewController.names = names
			}
		} else if (segue.identifier == "signoutSegue") {
			if let signoutViewController: SignOutViewController = segue.destination as? SignOutViewController {
				signoutViewController.names = names
			}
		}
	}
}
