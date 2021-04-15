//
//  TestViewController.swift
//  StarWars.Protocols
//
//  Created by Sebastian Sciuba on 15/04/2021.
//

import UIKit

class TestViewController : UIViewController {
    
//    let vc = Test2VC()  < - tak nie dziala
    
    var button : UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("TEST", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(handleButon), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    @objc func handleButon() {
        let vc = Test2VC()
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    func setupView() {
        view.backgroundColor = .white
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -46).isActive = true
        
//        vc.delegate = self  < - tak nie dziala
    }
    
}

extension TestViewController: Test2ViewControllerDelegate {
    func testOne() {
        dismiss(animated: true, completion: nil)
        button.setTitle("123", for: .normal)
        print("123")
    }
}
