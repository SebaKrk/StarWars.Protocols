//
//  LightOrDarkViewController.swift
//  StarWars.Protocols
//
//  Created by Sebastian Sciuba on 05/12/2020.
//

import UIKit

protocol LightOrDarkDelegate {
    func didTapChoice( image: UIImage, color: UIColor )
}

class LightOrDarkViewController: UIViewController {
    
    var delegate: LightOrDarkDelegate?
    
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
    
    var titleLabel : UILabel = {
        let label = UILabel()
        label.text = "Chose Your Side"
        label.font = UIFont(name: "Avenir Next Heavy", size: 40)
        label.textAlignment = .center
        label.textColor = UIColor(displayP3Red: 250, green: 229, blue: 0, alpha: 1)
        
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViewConstraint()
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    //    MARK: - SetUpViewConstraint
    
    func setUpViewConstraint() {
        
        view.backgroundColor = .black
        
        let stackView = UIStackView(arrangedSubviews: [lightSideButton,darkSideButton])
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.setCustomSpacing(50, after: lightSideButton)
        
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
        
        delegate?.didTapChoice(image: UIImage(named: "light")!, color: .black)
        
    }
    
    @objc func handleDarkSideButton() {
        print("You choose dark side")
        
        delegate?.didTapChoice(image: UIImage(named:"dark")!, color: .black)

    }
    
}
