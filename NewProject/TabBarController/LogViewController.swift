//
//  LogViewController.swift
//  newProject
//
//  Created by Admin on 10/05/24.
//

import UIKit
import SnapKit

class LogViewController: UIViewController {
    
    lazy var labelSing: UILabel = {
        let label = UILabel()
        label.text = "Sing"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.textColor = .label
        label.textAlignment = .center
        return label
    }()
    
    lazy var labelName: UILabel = {
        let label = UILabel()
        label.text = "Name:"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .label
        return label
    }()

    lazy var labelSurname: UILabel = {
        let label = UILabel()
        label.text = "Surname:"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .label
        return label
    }()
    
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "login or email"
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        textField.borderStyle = .roundedRect
        textField.textColor = .black
        textField.layer.cornerRadius = 200
        return textField
    }()
    
    let surNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "password"
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        textField.borderStyle = .roundedRect
        textField.textColor = .black
        return textField
    }()
    
    
    let singButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sing", for: .normal)
        //button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = .systemBlue
        //button.addTarget(ViewController.self, action: #selector(singButtonTaped), for: .touchUpInside)
        button.layer.cornerRadius = 6
        return button
    }()
    
    
    @objc func singButtonTaped() {
  
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPurple
        config()
    }
    


    // MARK: - Config
    
    private func config() {
        view.addSubview(labelSing)
        view.addSubview(labelName)
        view.addSubview(labelSurname)
        view.addSubview(singButton)
        view.addSubview(nameTextField)
        view.addSubview(surNameTextField)
        view.addSubview(singButton)
        
        labelSing.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(60)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(40)
        }
        
        labelName.snp.makeConstraints { make in
            make.top.equalTo(labelSing.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
            make.height.equalTo(40)
            //make.width.equalTo(100)
        }
        
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(labelName.snp.bottom).offset(-5)
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
            make.height.equalTo(40)
        }
        
        labelSurname.snp.makeConstraints { make in
            make.top.equalTo(nameTextField.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
            make.height.equalTo(40)
        }
        
        surNameTextField.snp.makeConstraints { make in
            make.top.equalTo(labelSurname.snp.bottom).offset(-5)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(310)
            
        }
        
        singButton.snp.makeConstraints { make in
            make.top.equalTo(surNameTextField.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(100)
        }
        
    }


}
