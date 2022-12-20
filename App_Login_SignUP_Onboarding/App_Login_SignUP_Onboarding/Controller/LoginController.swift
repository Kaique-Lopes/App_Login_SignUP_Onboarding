//
//  LoginController.swift
//  App_Login_SignUP_Onboarding
//
//  Created by Kaique Lopes on 19/12/22.
//

import UIKit

    // MARK: - Criando uma tela LoginController
class LoginController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Criando Cor Gradiente
    func configureUI() {
        let gradientColor = CAGradientLayer()
        gradientColor.colors = [UIColor.systemPurple.cgColor, UIColor.blue.cgColor]
        gradientColor.locations = [0, 1]
        view.layer.addSublayer(gradientColor)
        gradientColor.frame = view.frame
    }
}
