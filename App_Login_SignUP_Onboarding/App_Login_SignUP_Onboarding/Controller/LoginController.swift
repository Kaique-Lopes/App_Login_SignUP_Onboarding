//
//  LoginController.swift
//  App_Login_SignUP_Onboarding
//
//  Created by Kaique Lopes on 19/12/22.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Components
    lazy var iconImage: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "firebase-logo"))
        return icon
    }()
    
    lazy var emailTextField = CustomTextField(placeholder: "E-mail")
    
    lazy var passwordTextField: CustomTextField = {
        let passTF = CustomTextField(placeholder: "Password")
        passTF.isSecureTextEntry = true
        return passTF
    }()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        addSubViews()
        setupConstraints()
    }
    
    // MARK: - Criando Cor Gradiente
    func configureUI() {
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        let gradientColor = CAGradientLayer()
        gradientColor.colors = [UIColor.systemPurple.cgColor, UIColor.blue.cgColor]
        gradientColor.locations = [0, 1]
        view.layer.addSublayer(gradientColor)
        gradientColor.frame = view.frame
    }
    
    // MARK: - Adicionando elementos na view
    func addSubViews() {
        view.addSubview(iconImage)
    }
    
    // MARK: - Criando Constraints
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
