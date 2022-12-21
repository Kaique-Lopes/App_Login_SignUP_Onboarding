//
//  LoginController.swift
//  App_Login_SignUP_Onboarding
//
//  Created by Kaique Lopes on 19/12/22.
//

import UIKit

    // MARK: - Criando uma tela LoginController
class LoginController: UIViewController {
        // MARK: - Components
    lazy var iconImage: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "firebase-logo"))
        return icon
    }()
    
    lazy var emailTextField: UITextField = {
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        
        let emailTF = UITextField()
        emailTF.leftView = spacer
        emailTF.leftViewMode = .always
        emailTF.keyboardType = .emailAddress
        emailTF.borderStyle = .none
        emailTF.textColor = .white
        emailTF.keyboardAppearance = .dark
        emailTF.backgroundColor = UIColor(white: 1, alpha: 0.1)
        emailTF.setHeight(height: 50)
        emailTF.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
        return emailTF
    }()
    
    lazy var passwordTextField: UITextField = {
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        
        let passTF = UITextField()
        passTF.leftView = spacer
        passTF.leftViewMode = .always
        passTF.isSecureTextEntry = true
        passTF.borderStyle = .none
        passTF.textColor = .white
        passTF.keyboardAppearance = .dark
        passTF.backgroundColor = UIColor(white: 1, alpha: 0.1)
        passTF.setHeight(height: 50)
        passTF.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
        return passTF
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        addSubViews()
        setupConstraints()
    }
    
    // MARK: - Criando Cor Gradiente
    func configureUI() {
    // MARK: - Hidden NavigationBar
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        let gradientColor = CAGradientLayer()
        gradientColor.colors = [UIColor.systemPurple.cgColor, UIColor.blue.cgColor]
        gradientColor.locations = [0, 1]
        view.layer.addSublayer(gradientColor)
        gradientColor.frame = view.frame
    }
    
    func addSubViews() {
        view.addSubview(iconImage)
    }
    
    func setupConstraints() {
        iconImage.centerX(inView: view)
        iconImage.setDimensions(height: 120, width: 120)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
        
        let stackView = UIStackView(arrangedSubviews: [ emailTextField, passwordTextField ])
        stackView.axis = .vertical
        stackView.spacing = 20
        view.addSubview(stackView)
        stackView.anchor(top: iconImage.bottomAnchor,
                         left: view.leftAnchor,
                         right: view.rightAnchor,
                         paddingTop: 32,
                         paddingLeft: 32,
                         paddingRight: 32)
    }
}
