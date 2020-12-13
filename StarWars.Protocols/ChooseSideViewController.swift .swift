//
//  ChooseSideViewController.swift .swift
//  StarWars.Protocols
//
//  Created by Sebastian Sciuba on 05/12/2020.
//

import UIKit

class ChooseSideViewController: UIViewController {
    
    var mainView : UIImageView = {
        var imageView = UIImageView(image: #imageLiteral(resourceName: "starwars1"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    var chooseButton : UIButton = {
        var button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(named:"Rectangle"), for: .normal)
        button.setTitle("chose a side", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
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
        mainView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
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
    func didTapChoice(image: UIImage, color: UIColor) {
        self.dismiss(animated: true) {
            self.mainView.image = image
            self.view.backgroundColor = color
        }
    }
}

