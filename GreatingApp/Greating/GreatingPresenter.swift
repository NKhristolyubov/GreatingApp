//
//  GreatingPresenter.swift
//  GreatingApp
//
//  Created by Nikolai Khristoliubov on 12.01.23.
//

import Foundation

struct GreatingData {
    let name: String
    let surname: String
}

class GreatingPresenter: GreatingViewOutputProtocol {
    
    unowned private let view: GreatingViewInputProtocol
    
    var interactor: GreatingInteractorInputProtocol!
    
    required init(view: GreatingViewInputProtocol) {
        self.view = view
    }
    
    func didTapShowGreating() {
        interactor.ProvideGreatingData() 
    }
    
}

extension GreatingPresenter: GreatingInteractorOutputProtocol {
    func receiveGreatingData(greatingData: GreatingData) {
        let greating = "Hello, \(greatingData.name) \(greatingData.surname)!"
        view.setGreating(greating)
    }
}
