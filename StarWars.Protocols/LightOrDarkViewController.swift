//
//  LightOrDarkViewController.swift
//  StarWars.Protocols
//
//  Created by Sebastian Sciuba on 05/12/2020.
//

import UIKit

class LightOrDarkViewController: UIViewController {
    
    var lightSideButton: UIButton = {
        let buttton = UIButton(type: .system)
        buttton.setBackgroundImage(UIImage(named: "rebel"), for: .normal)
        
        
        buttton.addTarget(self, action: #selector(handleLightSideButton), for: .touchUpInside)
        return buttton
    }()
    
    var darkSideButton: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(named: "imperial"), for: .normal)
        
        
        button.addTarget(self, action: #selector(handleDarkSideButton), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViewConstraint()
    }
    
    //    MARK: - SetUpViewConstraint
    
    func setUpViewConstraint() {
        
        view.backgroundColor = .black
        
        let stackView = UIStackView(arrangedSubviews: [lightSideButton,darkSideButton])
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90)
        ])
    }
    
    //    MARK: - objc func
    
    @objc func handleLightSideButton() {
        print("You choose light side")
    }
    
    @objc func handleDarkSideButton() {
        print("You choose dark side")
    }
    
}
