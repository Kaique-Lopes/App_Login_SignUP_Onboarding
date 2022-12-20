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
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
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
    }
}
