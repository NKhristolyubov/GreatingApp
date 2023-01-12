//
//  ViewController.swift
//  GreatingApp
//
//  Created by Nikolai Khristoliubov on 12.01.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greatingLabel: UILabel!
    
    let person = Person(name: "Mike", surname: "Smith")
  

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        greatingLabel.text = "Hello, \(person.fullName)!"
    }

}

