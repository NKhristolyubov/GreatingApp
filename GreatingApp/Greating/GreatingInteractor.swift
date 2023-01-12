//
//  GreatingInteractor.swift
//  GreatingApp
//
//  Created by Nikolai Khristoliubov on 12.01.23.
//

import Foundation

protocol GreatingInteractorInputProtocol {
    init(presenter: GreatingInteractorOutputProtocol)
    func ProvideGreatingData()
}

protocol GreatingInteractorOutputProtocol: AnyObject {
    func receiveGreatingData(greatingData: GreatingData)
}

class GreatingInteractor: GreatingInteractorInputProtocol {

    unowned private let presenter: GreatingInteractorOutputProtocol
    
    required init(presenter: GreatingInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func ProvideGreatingData() {
        let person = Person(name: "Tom", surname: "Lu")
        let greatingData = GreatingData(name: person.name, surname: person.surname)
        presenter.receiveGreatingData(greatingData: greatingData)
    }
    
}
