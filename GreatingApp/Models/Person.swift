//
//  Person.swift
//  GreatingApp
//
//  Created by Nikolai Khristoliubov on 12.01.23.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

