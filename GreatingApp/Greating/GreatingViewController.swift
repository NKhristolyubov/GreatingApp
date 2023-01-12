//
//  ViewController.swift
//  GreatingApp
//
//  Created by Nikolai Khristoliubov on 12.01.23.
//

import UIKit

protocol GreatingViewInputProtocol: AnyObject {
    
    func setGreating(_ greating: String)
}

protocol GreatingViewOutputProtocol {
    init(view: GreatingViewInputProtocol)
    
    func didTapShowGreating()
    
}

class GreatingViewController: UIViewController {

    @IBOutlet var greatingLabel: UILabel!
    
    private var person: Person!
    private let configurator: GreatingConfiguratorInputProtocol = GreatingConfigurator()
    var presenter: GreatingViewOutputProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(view: self)
    }
  

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        presenter.didTapShowGreating()
    }

}

//MARK: - GreatingViewInputProtocol
extension GreatingViewController: GreatingViewInputProtocol {
    func setGreating(_ greating: String) {
        greatingLabel.text = greating
    }
    
    
}
