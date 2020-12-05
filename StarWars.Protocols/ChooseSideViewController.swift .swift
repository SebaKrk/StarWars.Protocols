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
        imageView.contentMode = .scaleAspectFit
//        imageView.adjustsImageSizeForAccessibilityContentSizeCategory = false
        return imageView
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
        

    }
}


