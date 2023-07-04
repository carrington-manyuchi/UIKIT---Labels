//
//  ViewController.swift
//  Label
//
//  Created by DA MAC M1 157 on 2023/07/04.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.5
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "person.circle")
        imageView.tintColor = .label
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.shadowOffset = CGSize(width: 3, height: 3)
        textField.layer.shadowOpacity = 0.4
        textField.placeholder = "Enter Your Name"
        textField.keyboardType = .default
        textField.backgroundColor = .secondarySystemBackground
        textField.layer.masksToBounds = false
        textField.layer.cornerRadius = 8
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        textField.layer.borderColor = UIColor(red: 0.82, green: 0.96, blue: 0.75, alpha: 1.00).cgColor
        textField.layer.borderWidth = 1
        return textField
    }()
    
    private let passwwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.shadowOffset = CGSize(width: 3, height: 3)
        textField.layer.shadowOpacity = 0.4
        textField.placeholder = "Enter Password"
        textField.keyboardType = .default
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1
        textField.layer.masksToBounds = false
        textField.layer.borderColor = UIColor(red: 0.82, green: 0.96, blue: 0.75, alpha: 1.00).cgColor
        textField.backgroundColor = .secondarySystemBackground
        
        return textField
    }()
    
    private let addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Click Me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 6
        button.layer.shadowOffset = CGSize(width: 3, height: 3)
        button.layer.shadowOpacity = 0.3
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Programmatic App"
        setupViews()
        configureConstraints()
    }
    
    private func setupViews() {
        view.addSubview(addButton)
        view.addSubview(emailTextField)
        view.addSubview(passwwordTextField)
        view.addSubview(profileImageView)
        view.addSubview(mainView)
    }
    
    private func configureConstraints() {
        
        
        let profileImageViewConstraints = [
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35),
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.heightAnchor.constraint(equalToConstant: 120),
            profileImageView.widthAnchor.constraint(equalToConstant: 120),
        ]
        
        let emailTextFieldConstraints = [
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTextField.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        let passwwordTextFieldConstraints = [
            passwwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            passwwordTextField.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        let addButtonConstraints = [
            addButton.topAnchor.constraint(equalTo: passwwordTextField.bottomAnchor, constant: 50),
            addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addButton.heightAnchor.constraint(equalToConstant: 45),
            addButton.widthAnchor.constraint(equalToConstant: 200)
        ]
        
        let mainViewConstraints = [
            mainView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 50),
            mainView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            mainView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            mainView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
//            mainView.heightAnchor.constraint(equalToConstant: view.frame.height * 0.5),
//            mainView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.7)
        ]
        
        NSLayoutConstraint.activate(addButtonConstraints)
        NSLayoutConstraint.activate(emailTextFieldConstraints)
        NSLayoutConstraint.activate(passwwordTextFieldConstraints)
        NSLayoutConstraint.activate(profileImageViewConstraints)
        NSLayoutConstraint.activate(mainViewConstraints)
        
    }


}

