//
//  GreatingConfigurator.swift
//  GreatingApp
//
//  Created by Nikolai Khristoliubov on 12.01.23.
//

import Foundation

protocol GreatingConfiguratorInputProtocol {
    func configure(view: GreatingViewController)
}

class GreatingConfigurator: GreatingConfiguratorInputProtocol {
    func configure(view: GreatingViewController) {
        let presenter = GreatingPresenter(view: view)
        let interactor = GreatingInteractor(presenter: presenter)
        view.presenter = presenter
        presenter.interactor = interactor
        
    }
    
    
}
