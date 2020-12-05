//
//  ViewController.swift
//  StarWars.Protocols
//
//  Created by Sebastian Sciuba on 05/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var logoButton : UIButton = {
        var button = UIButton(type: .system)
        button.setImage(UIImage(named: "starWarslogo")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViewConstraint()
        
    }
    
    
    //    MARK: - SetUpViewConstraint
    
    func setUpViewConstraint() {
        view.backgroundColor = .black
        
        view.addSubview(logoButton)
        logoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        logoButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
}

