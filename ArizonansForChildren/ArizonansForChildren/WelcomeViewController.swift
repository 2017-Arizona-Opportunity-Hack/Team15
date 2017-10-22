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
		let c3 = ChildPerson(newName: "Barry")
		let c4 = ChildPerson(newName: "Chris")
		let c5 = ChildPerson(newName: "Jim")
		let c6 = ChildPerson(newName: "Diane")
		let c7 = ChildPerson(newName: "Claire")
		let c8 = ChildPerson(newName: "Jerry")
		let c9 = ChildPerson(newName: "Geoff")
		let c10 = ChildPerson(newName: "George")
		let c11 = ChildPerson(newName: "Blake")
		let c12 = ChildPerson(newName: "Gary")
		let c13 = ChildPerson(newName: "Andy")
		let c14 = ChildPerson(newName: "Julia")
		let c15 = ChildPerson(newName: "Randy")
		let c16 = ChildPerson(newName: "Bill")

		
		let p1 = Person(newName: "Clark White", newId: "0", newChildren: [c1, c2], newSupervisor: "Blake Hicks")
		let p2 = Person(newName: "Harvey Fuller", newId: "0", newChildren: [c4, c2], newSupervisor: "Walter Lincoln")
		let p3 = Person(newName: "David Peterson", newId: "0", newChildren: [c2, c2], newSupervisor: "Walter Lincoln")
		let p4 = Person(newName: "Paige Brown", newId: "0", newChildren: [c1, c2], newSupervisor: "Richard Hay")
		let p5 = Person(newName: "Rose Smith", newId: "0", newChildren: [c4, c2], newSupervisor: "Reed Rice")
		let p6 = Person(newName: "Scott Young", newId: "0", newChildren: [c7, c2], newSupervisor: "Test Super")
		let p7 = Person(newName: "Bradley Jackson", newId: "0", newChildren: [c14, c2], newSupervisor: "Riley Montgomery")
		let p8 = Person(newName: "James Harris", newId: "0", newChildren: [c1, c16], newSupervisor: "Paul Stanley")
		let p9 = Person(newName: "Evan King", newId: "0", newChildren: [c1, c12], newSupervisor: "Hunter Fox")
		let p10 = Person(newName: "Mary Mack", newId: "0", newChildren: [c2, c2], newSupervisor: "Riley Conner")
		let p11 = Person(newName: "Taylor Arnold", newId: "0", newChildren: [c5, c2], newSupervisor: "Hailey Gage")
		let p12 = Person(newName: "Ann Woods", newId: "0", newChildren: [c14, c7], newSupervisor: "Vance State")
		let p13 = Person(newName: "Bill Biggs", newId: "0", newChildren: [c16, c8], newSupervisor: "Vaughn Moon")
		let p14 = Person(newName: "Edward Cook", newId: "0", newChildren: [c12, c9], newSupervisor: "Test Super")
		let p15 = Person(newName: "Nickolas Green", newId: "0", newChildren: [c11, c3], newSupervisor: "Riley Montgomery")
		let p16 = Person(newName: "Dean Hughes", newId: "0", newChildren: [c14, c2], newSupervisor: "Reese Fey")
		let p17 = Person(newName: "Bennet Shaw", newId: "0", newChildren: [c6, c3], newSupervisor: "Hailey Phillips")
		let p18 = Person(newName: "Curtis Bell", newId: "0", newChildren: [c12, c5], newSupervisor: "Gary Goodrich")
		let p19 = Person(newName: "Morgan Cooper", newId: "0", newChildren: [c6, c2], newSupervisor: "Tom Reckonwood")
		let p20 = Person(newName: "Griffin Watson", newId: "0", newChildren: [c11, c2], newSupervisor: "Hayden Betts")

		names.append(p1)
		names.append(p2)
		names.append(p3)
		names.append(p4)
		names.append(p5)
		names.append(p6)
		names.append(p7)
		names.append(p8)
		names.append(p9)
		names.append(p10)
		names.append(p11)
		names.append(p12)
		names.append(p13)
		names.append(p14)
		names.append(p15)
		names.append(p16)
		names.append(p17)
		names.append(p18)
		names.append(p19)
		names.append(p20)

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
