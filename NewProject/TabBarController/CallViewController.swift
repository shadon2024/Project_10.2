//
//  CallViewController.swift
//  newProject
//
//  Created by Admin on 26/04/24.
//

import UIKit

class CallViewController: UIViewController {

    lazy var button: UIButton = {
        let button = UIButton()
        //button.titleLabel = "hello"
        //button.tintColor = .red
        button.backgroundColor = .blue
        //button.frame = CGRect(x: 20, y: 40, width: 60, height: 20)
        
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemFill
        
        configUI()
    }
    
    
    private func configUI() {
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    

}
