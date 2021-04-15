//
//  Test2VC.swift
//  StarWars.Protocols
//
//  Created by Sebastian Sciuba on 15/04/2021.
//


import UIKit

protocol Test2ViewControllerDelegate : class {
     func testOne()
}

class Test2VC : UIViewController {
    
    weak var delegate : Test2ViewControllerDelegate?
        
    var button : UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("DELEGATE", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(handleButon), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    @objc func handleButon() {
        print("button in test2vc")
        
        delegate?.testOne()
    }
    
    func setupView() {
        view.backgroundColor = .white
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -46).isActive = true
    }
    
}
