//
//  ChooseSideViewController.swift .swift
//  StarWars.Protocols
//
//  Created by Sebastian Sciuba on 05/12/2020.
//

import UIKit

class ChooseSideViewController: UIViewController {
    
    var mainView : UIImageView = {
        var imageView = UIImageView(image: #imageLiteral(resourceName: "ChooseSide"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var chooseButton : UIButton = {
        var button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(named:"Rectangle"), for: .normal)
        button.setTitle("chose a side", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        button.addTarget(self, action: #selector(handleChooseButton), for: .touchUpInside)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViewConstraint()
        
    }
    
//    MARK: - SetUpViewConstraint
    
    func setUpViewConstraint() {
        
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(chooseButton)
        chooseButton.translatesAutoresizingMaskIntoConstraints = false
        chooseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        chooseButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 250).isActive = true
    }
    
//    MARK: - objc func
    
    @objc func handleChooseButton() {
        
        let vc = LightOrDarkViewController()
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
    }
}

extension ChooseSideViewController: LightOrDarkDelegate {
    func didTapChoice(image: UIImageView, color: UIColor) {
        self.dismiss(animated: true) {
            self.mainView = image
            self.view.backgroundColor = color
        }
    }
}


