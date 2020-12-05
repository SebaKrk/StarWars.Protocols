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
        buttton.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        buttton.addTarget(self, action: #selector(handleLightSideButton), for: .touchUpInside)
        return buttton
    }()
    
    var darkSideButton: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(named: "imperial"), for: .normal)
        button.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        
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
        
        view.addSubview(lightSideButton)
        
        view.addSubview(darkSideButton)
        
    }
    
    //    MARK: - objc func
    
    @objc func handleLightSideButton() {
        print("You choose light side")
    }
    
    @objc func handleDarkSideButton() {
        print("You choose dark side")
    }
    
}
